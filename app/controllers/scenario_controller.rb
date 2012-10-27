class ScenarioController < ApplicationController

	def add
		@scenario = Scenario.new
	end

	def create
  	Scenario.create( params[:scenario] ).save_to_file
  	redirect_to :action => 'succeed'
  end

  def succeed;end

end
