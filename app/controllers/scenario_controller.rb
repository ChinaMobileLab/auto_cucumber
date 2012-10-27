class ScenarioController < ApplicationController

	def add
		@scenario = Scenario.new
	end

	def create
  	scenario = Scenario.create( params[:scenario] )
  	puts "-------------", scenario.given_conditions
  	redirect_to :action => 'succeed'
  end

  def succeed;end

end
