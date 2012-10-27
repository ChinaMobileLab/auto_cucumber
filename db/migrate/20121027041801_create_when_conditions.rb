class CreateWhenConditions < ActiveRecord::Migration
  def change
    create_table :when_conditions do |t|
      t.string :text

      t.timestamps
    end
  end
end
