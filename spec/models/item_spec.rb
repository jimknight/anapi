require 'spec_helper'

describe Item do
  it "should belong to a store" do
    @item = Factory(:item)
    @item.should respond_to(:store) 
  end
  it "should correctly associate to a store" do
    @store = Factory(:store)
    @item = Factory(:item)
    @store.items.size.should == 0
    @store.items << @item
    @store.items.size.should == 1 
  end
end
