class AddClosingDateToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :closing_date, :datetime
    add_index :proposals, :closing_date
  end
end

