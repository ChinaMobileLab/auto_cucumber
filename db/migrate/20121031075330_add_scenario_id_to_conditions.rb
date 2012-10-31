class AddScenarioIdToConditions < ActiveRecord::Migration
  def change
    add_column :conditions, :scenario_id, :integer
  end
end
