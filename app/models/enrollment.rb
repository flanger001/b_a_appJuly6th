# == Schema Information
#
# Table name: enrollments
#
#  id         :integer          not null, primary key
#  student_id :integer
#  klass_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Enrollment < ActiveRecord::Base
  belongs_to :student
  belongs_to :klass
  
  validates :klass_id, presence: true
  validates :student_id, presence: true

  delegate :klass_name, to: :klass
end
