class CreateScholars < ActiveRecord::Migration
  def change
    create_table :scholars do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :school
      t.string :avatar_path
      t.string :status, default: 'Active'
      t.text :description
      t.float :amount

      t.timestamps
    end
  end
end
