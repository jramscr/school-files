# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  grade_id   :integer
#  person_id  :integer
#  gpa        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_students_on_grade_id   (grade_id)
#  index_students_on_person_id  (person_id)
#
# Foreign Keys
#
#  fk_rails_...  (grade_id => grades.id)
#  fk_rails_...  (person_id => people.id)
#

class StudentSerializer < ActiveModel::Serializer
  attributes :id, :gpa
  belongs_to :grade
  belongs_to :person
end
