class AddScenarioIdToGivenConditions < ActiveRecord::Migration
  def change
    add_column :given_conditions, :scenario_id, :integer
  end
end
