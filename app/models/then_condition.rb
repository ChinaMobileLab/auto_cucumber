class ThenCondition < ActiveRecord::Base
	belongs_to :scenario
  attr_accessible :text
end