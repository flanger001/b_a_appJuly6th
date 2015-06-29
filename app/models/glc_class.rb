class GlcClass < ActiveRecord::Base
  validates :class_name, presence: true, length: { maximum: 250 }, uniqueness: { case_sensitive: false }
  validates :day, presence: true
end
