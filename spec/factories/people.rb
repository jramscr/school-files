# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string
#  last_name  :string
#  pid        :string
#  birth_date :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :person do
    name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    pid { Faker::Number.number(9) }
    birth_date { Faker::Date.between(30.years.ago, 20.years.ago) }
  end
end
