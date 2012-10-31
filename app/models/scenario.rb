class Scenario < ActiveRecord::Base
	
  include ScenarioHelper

	has_many :given_conditions, :before_add => :add_given_tag, :class_name => "Condition", :conditions => "tag = 'given'"
	has_many :when_conditions, :before_add => :add_when_tag, :class_name => "Condition", :conditions => "tag = 'when'" 
	has_many :then_conditions, :before_add => :add_then_tag, :class_name => "Condition", :conditions => "tag = 'then'" 

	accepts_nested_attributes_for :given_conditions, :when_conditions, :then_conditions
	
  attr_accessible :tag, :title, :given_conditions_attributes, :when_conditions_attributes, :then_conditions_attributes
  

  def method_missing( meth, *args, &block )
    super.method_missing unless meth =~ /add_(\w+)_tag/
    args[0].tag = $1
  end

end
