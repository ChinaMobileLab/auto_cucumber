class Scenario < ActiveRecord::Base
	
	has_many :given_conditions
	has_many :when_conditions
	has_many :then_conditions

	accepts_nested_attributes_for :given_conditions, :when_conditions, :then_conditions
	
  attr_accessible :category, :title, :given_conditions_attributes, :when_conditions_attributes, :then_conditions_attributes

  def save_to_file
  	File.open("features_created/test_feature.feature", "a") do |file|
  		file.puts to_s
  		file.puts
  	end
  end


  def to_s
  	contents = []
  	contents << sc_category << sc_title
  	%w{given when then}.each do|item|
  		contents << loop_item(item)
  	end
  	contents.join "\n"
  end

  private

  def sc_category
  	"@" + category
  end

  def sc_title
  	"Scenario: " + title
  end

  def sc_condition(tag = "And", text )
  	tag.capitalize + " " + text
  end

  def loop_item( item_tag )
  	results = []
  	conditions = send("#{item_tag}_conditions")
  	results << sc_condition( item_tag, conditions.shift.text )
  	unless conditions.empty?
  		conditions.each do |condition|
				results << sc_condition( condition.text )
  		end
  	end
  	results.map do |each_line|
  		" " * 2 + each_line
  	end
  end
  
end
