class DropTableGivenConditions < ActiveRecord::Migration
  def change
  	drop_table :given_conditions
  end
end
