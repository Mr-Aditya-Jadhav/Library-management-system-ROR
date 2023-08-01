class AddFineToRequestbook < ActiveRecord::Migration[7.0]
  def change
    add_column :requestbooks, :fine, :integer
  end
end
