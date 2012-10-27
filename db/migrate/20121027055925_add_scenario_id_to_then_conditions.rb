class AddScenarioIdToThenConditions < ActiveRecord::Migration
  def change
    add_column :then_conditions, :scenario_id, :integer
  end
end
