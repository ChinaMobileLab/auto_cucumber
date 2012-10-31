class RenameCategoryToTagForScenario < ActiveRecord::Migration
  def up
  	rename_column :scenarios, :category, :tag
  end

  def down
  	delete_column :scenarios, :tag
  end
end
