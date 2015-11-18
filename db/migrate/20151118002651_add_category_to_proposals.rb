class AddCategoryToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :category, :integer, default: 0
    add_index :proposals, :category
  end
end
