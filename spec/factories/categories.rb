FactoryBot.define do
  factory :category do
    sequence(:name) { |_n| 'Category #{n}' }
  end
end
