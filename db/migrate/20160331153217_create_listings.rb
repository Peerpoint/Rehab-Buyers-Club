class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :status
      t.string :lead_type
      t.string :property_type
      t.string :location
      t.decimal :avr
      t.decimal :asking_price
      t.decimal :repair_cost
      t.decimal :profit

      t.timestamps null: false
    end
  end
end
