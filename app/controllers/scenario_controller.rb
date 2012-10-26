class ScenarioController < ApplicationController

	def add
		@scenario = Scenario.new
	end

	def create
  	Scenario.new( params[:scenario] ).save
  	redirect_to :action => 'succeed'
  end

  def succeed;end

end
