class AddMainCategoryColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :category_id, :integer, references: :categories
  end
end
