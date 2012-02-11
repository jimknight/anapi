FactoryGirl.define do
  factory :company do
    name 'Home Depot'
  end

  factory :store do
    address_line_1 '2215 Maple Ave'
  end

  factory :item do
    title 'nails'
    aisle  '1'
  end
end