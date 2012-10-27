class CreateGivenConditions < ActiveRecord::Migration
  def change
    create_table :given_conditions do |t|
      t.string :text

      t.timestamps
    end
  end
end
