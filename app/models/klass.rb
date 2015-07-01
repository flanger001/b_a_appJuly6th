class Klass < ActiveRecord::Base
  validates :klass_name, presence: true, length: { maximum: 250 }, uniqueness: { case_sensitive: false }
  validates :day, presence: true
  
  belongs_to :teacher
  
end
