class StoresItems < ActiveRecord::Migration
  def up
    create_table "items_stores", :id => false do |t|
      t.column "store_id", :integer, :null => false
      t.column "item_id",  :integer, :null => false
    end
  end

  def down
    drop_table "items_stores"
  end
end
