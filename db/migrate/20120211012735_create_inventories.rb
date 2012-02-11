class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :title
      t.string :aisle

      t.timestamps
    end
  end
end
