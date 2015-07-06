# == Schema Information
#
# Table name: klasses
#
#  id         :integer          not null, primary key
#  klass_name :string
#  day        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Klass < ActiveRecord::Base
  validates :klass_name, presence: true, length: { maximum: 250 }, uniqueness: { case_sensitive: false }
  validates :day, presence: true
  
  belongs_to :teacher
  #belongs_to :student
  has_many :enrollments
  has_many :students, :through => :enrollments
  
end
