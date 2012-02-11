class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
