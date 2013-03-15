class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :contact_number
      t.string :amount
      t.string :status, default: 'Unpaid'
      t.text :message

      t.integer :scholar_id

      t.timestamps
    end
  end
end
