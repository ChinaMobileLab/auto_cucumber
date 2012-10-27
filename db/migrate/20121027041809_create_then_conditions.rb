class CreateThenConditions < ActiveRecord::Migration
  def change
    create_table :then_conditions do |t|
      t.string :text

      t.timestamps
    end
  end
end
