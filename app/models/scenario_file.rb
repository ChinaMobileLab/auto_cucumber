class ScenarioFile
	SPACE = " "
	NEW_LINE = "\n"

	def initialize( feature_file = "features_created/test_feature.feature")
		@feature_file = feature_file
	end

	def save_scenario( scenario )
		File.open(@feature_file, "a") do |file|
  		file.puts to_file_format( scenario )
  		file.puts
  	end
	end

	private

	def to_file_format( scenario )
  	contents = []
  	contents << scenario.file_tag << scenario.file_title
  	%w{given when then}.each do|tag|
  		contents << loop_item( scenario, tag )
  	end
  	contents.join NEW_LINE
  end

	def format_condition( tag = "And", text )
  	tag.capitalize + SPACE + text
  end

  def loop_item( scenario, item_tag )
  	results = []
  	conditions = scenario.send("#{item_tag}_conditions")
  	results << format_condition( item_tag, conditions.shift.text )
  	unless conditions.empty?
  		conditions.each do |condition|
				results << format_condition( condition.text )
  		end
  	end
  	results.map do |each_line|
  		SPACE * 2 + each_line
  	end
  end
end