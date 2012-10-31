class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :text
      t.string :tag

      t.timestamps
    end
  end
end
