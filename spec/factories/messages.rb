FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :user
    association :room

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/staff2.jpg'), filename: 'staff2.jpg')
    end
  end
end