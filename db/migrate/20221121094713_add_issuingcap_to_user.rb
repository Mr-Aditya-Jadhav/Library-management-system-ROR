class AddIssuingcapToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :issuingcap, :integer
  end
end
