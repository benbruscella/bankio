# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
      when "2011-02-14"
      amount 1.5
      description "MyString"
      total 1.5
    end
end