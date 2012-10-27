class RenameTypeToCategoryToScenario < ActiveRecord::Migration
  def up
  	rename_column :scenarios, :type, :category
  end

  def down
  end
end
