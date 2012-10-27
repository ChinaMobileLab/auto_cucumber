class AddScenarioIdToWhenConditions < ActiveRecord::Migration
  def change
    add_column :when_conditions, :scenario_id, :integer
  end
end
