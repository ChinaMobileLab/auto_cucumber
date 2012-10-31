class DropTableThenConditions < ActiveRecord::Migration
  def change
  	drop_table :then_conditions
  end
end
