# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact_form do
    name "First and Last Name"
    subject "A Subject"
    email "name@email.com"
    message "My message to you"
  end
end
