class AddReturndateToRequestbook < ActiveRecord::Migration[7.0]
  def change
    add_column :requestbooks, :returndate, :date
  end
end
