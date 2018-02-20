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

class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_name, :pid, :birth_date
end
