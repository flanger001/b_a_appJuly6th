class Student < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 25 }, uniqueness: { case_sensitive: false }
  
  has_many :users, :through => :klasses
  has_many :klasses
end