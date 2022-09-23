class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.boolean :admin
      t.string :name
      t.string :surname
      t.string :telephon
      t.string :email
      t.string :encrypted_password
      t.boolean :banned

      t.timestamps
    end
  end
end
