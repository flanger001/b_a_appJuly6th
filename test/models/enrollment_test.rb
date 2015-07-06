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

require 'test_helper'

class EnrollmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
