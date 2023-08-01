class CreateRequestbooks < ActiveRecord::Migration[7.0]
  def change
    create_table :requestbooks do |t|
      t.string :isbn
      t.string :title
      t.string :author
      t.string :requestedby
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
