class Klass < ActiveRecord::Base
  validates :klass_name, presence: true, length: { maximum: 250 }, uniqueness: { case_sensitive: false }
  validates :day, presence: true
  
  belongs_to :teacher
  belongs_to :student
  has_many :students, :through => :classrooms
  
end
