class AddApprovedateToRequestbook < ActiveRecord::Migration[7.0]
  def change
    add_column :requestbooks, :approvedate, :date
  end
end
