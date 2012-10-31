class DropTableWhenConditions < ActiveRecord::Migration
  def change
  	drop_table :when_conditions
  end
end
