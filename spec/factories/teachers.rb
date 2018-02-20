# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  person_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_teachers_on_person_id  (person_id)
#
# Foreign Keys
#
#  fk_rails_...  (person_id => people.id)
#

FactoryBot.define do
  factory :teacher do
    person
  end
end
