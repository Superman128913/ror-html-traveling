class CreateCustomTravels < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_travels do |t|
      t.string :departure
      t.string :destination
      t.date :date
      t.float :price
      t.float :rating
      t.text :comments
      t.string :physical
      t.string :characteristics
      t.boolean :event_bool
      t.text :event

      t.timestamps
    end
  end
end
