module FormHelper

	def setup_conditions( scenario )
		scenario.given_conditions << Condition.new( :tag => "given" )
		scenario.when_conditions << Condition.new( :tag => "when" )
		scenario.then_conditions << Condition.new( :tag => "then" )
		scenario
	end

	def selections_for( tag )
		Condition.where("tag = '#{tag}'").map do|condition|
			condition.text
		end.uniq
	end

end