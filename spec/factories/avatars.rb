# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :avatar do
    age 1
    height 1
    weight 1
    male false
    activeness "MyString"
  end
end
