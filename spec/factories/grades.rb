# == Schema Information
#
# Table name: grades
#
#  id         :integer          not null, primary key
#  name       :string
#  index      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :grade do
    sequence(:name) { |n| "Grade #{n}" }
    sequence(:index) { |n| n }
  end
end
