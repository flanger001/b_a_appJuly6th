class Enrollment < ActiveRecord::Base
  belongs_to :student
  belongs_to :klass
  
  validates :klass_id, presence: true
  validates :student_id, presence: true
end
