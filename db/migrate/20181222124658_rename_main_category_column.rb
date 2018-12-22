class RenameMainCategoryColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :category_id, :parent_id
  end
end
