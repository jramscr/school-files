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

class Grade < ApplicationRecord
end
