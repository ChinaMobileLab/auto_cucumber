module FormHelper

	def setup_conditions( scenario )
		scenario.given_conditions << GivenCondition.new
		scenario.when_conditions << WhenCondition.new
		scenario.then_conditions << ThenCondition.new
		scenario
	end

	def selections_for( tag )
		eval( "#{tag.capitalize}Condition" ).all.map do |each_condition|
			each_condition.text
		end
	end

end