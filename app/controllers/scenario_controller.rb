class ScenarioController < ApplicationController

	def add
		@scenario = Scenario.new
	end

	def create
		scenario_file = ScenarioFile.new
  	scenario_file.save_scenario Scenario.create( params[:scenario] )

  	redirect_to :action => 'succeed'
  end

  def succeed;end

end
