require 'spec_helper'

describe "inventories/edit" do
  before(:each) do
    @inventory = assign(:inventory, stub_model(Inventory,
      :title => "MyString",
      :aisle => "MyString"
    ))
  end

  it "renders the edit inventory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => inventories_path(@inventory), :method => "post" do
      assert_select "input#inventory_title", :name => "inventory[title]"
      assert_select "input#inventory_aisle", :name => "inventory[aisle]"
    end
  end
end
