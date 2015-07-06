class Student < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 25 }, uniqueness: { case_sensitive: false }
  
  
  
  #has_many :users, :through => :klasses
  #has_many :klasses
  has_many :enrollments
  has_many :klasses, :through => :enrollments
  accepts_nested_attributes_for :enrollments
end
