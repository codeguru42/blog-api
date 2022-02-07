FactoryBot.define do
  factory :article do
    sequence(:title) {|n| "Article #{n}"}
    body {Faker::Lorem.paragraph}
  end
end
