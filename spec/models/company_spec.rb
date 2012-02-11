require 'spec_helper'

describe Company do
  it "should belong to a store" do
    Company.create(:name => "x").should respond_to(:stores)
  end
  it "should allow a new store to be created with an association" do
     @company = Factory(:company)
     @company.stores.create!(:address_line_1 => "111 maple ave")
     @company.stores.count.should == 1
  end
end
