require 'spec_helper'

describe Store do
  before :each do
    @store = Factory(:store)
  end
  it "should belong to a company" do
    @store.should respond_to(:company) 
  end
  it "should have many items" do
    @store.should respond_to(:items)
  end
end
