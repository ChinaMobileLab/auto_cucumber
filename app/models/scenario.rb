class Scenario < ActiveRecord::Base
	
  include ScenarioHelper

	has_many :given_conditions, :class_name => "Condition", :conditions => "tag = 'given'" 
	has_many :when_conditions, :class_name => "Condition", :conditions => "tag = 'when'" 
	has_many :then_conditions, :class_name => "Condition", :conditions => "tag = 'then'" 

	accepts_nested_attributes_for :given_conditions, :when_conditions, :then_conditions
	
  attr_accessible :tag, :title, :given_conditions_attributes, :when_conditions_attributes, :then_conditions_attributes
  
end
