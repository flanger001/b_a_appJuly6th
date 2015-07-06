# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 25 }, uniqueness: { case_sensitive: false }
  
  
  
  #has_many :users, :through => :klasses
  #has_many :klasses
  has_many :enrollments
  has_many :klasses, :through => :enrollments
  accepts_nested_attributes_for :enrollments
  accepts_nested_attributes_for :klasses
end
