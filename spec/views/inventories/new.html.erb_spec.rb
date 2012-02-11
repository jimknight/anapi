require 'spec_helper'

describe "inventories/new" do
  before(:each) do
    assign(:inventory, stub_model(Inventory,
      :title => "MyString",
      :aisle => "MyString"
    ).as_new_record)
  end

  it "renders new inventory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => inventories_path, :method => "post" do
      assert_select "input#inventory_title", :name => "inventory[title]"
      assert_select "input#inventory_aisle", :name => "inventory[aisle]"
    end
  end
end
