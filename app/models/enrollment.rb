class Enrollment < ActiveRecord::Base
  belongs_to :students
  belongs_to :klasses
end
