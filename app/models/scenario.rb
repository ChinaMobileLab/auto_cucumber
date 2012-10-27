class Scenario < ActiveRecord::Base
	include ScenarioHelper

	has_many :given_conditions
	has_many :when_conditions
	has_many :then_conditions

	accepts_nested_attributes_for :given_conditions, :when_conditions, :then_conditions
	
  attr_accessible :type, :given_conditions_attributes, :when_conditions_attributes, :then_conditions_attributes
  
end
