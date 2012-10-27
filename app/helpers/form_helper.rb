module FormHelper

	def setup_conditions( scenario )
		scenario.given_conditions << GivenCondition.new
		scenario.when_conditions << WhenCondition.new
		scenario.then_conditions << ThenCondition.new
		scenario
	end

end