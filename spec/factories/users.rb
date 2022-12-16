FactoryBot.define do
  factory :user do
    email {FFaker::Internet.free_email}
    phone {FFaker::PhoneNumberBR.phone_number}
    name {FFaker::NameBR.first_name}
    last_name {FFaker::NameBR.last_name}
    password {'123456'}
    password_confirmation {'123456'}
  end
end
