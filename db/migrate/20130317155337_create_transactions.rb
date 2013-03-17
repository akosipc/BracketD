class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :code
      t.string :number
      t.string :status
      t.string :details
      t.string :express_token
      t.string :denomination
      t.string :payment
      t.string :cc_name
      t.string :cc_address1
      t.string :cc_address2
      t.string :cc_city
      t.string :cc_province
      t.string :cc_country
      t.string :cc_zip
      t.string :payer_id

      t.timestamps
    end
  end
end
