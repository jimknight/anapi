class CompanyStores < ActiveRecord::Migration
  def up
    create_table "companies_stores", :id => false do |t|
      t.column "company_id", :integer, :null => false
      t.column "store_id",  :integer, :null => false
    end
  end

  def down
    drop_table "companies_stores"
  end
end
