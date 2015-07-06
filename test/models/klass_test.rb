# == Schema Information
#
# Table name: klasses
#
#  id         :integer          not null, primary key
#  klass_name :string
#  day        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'test_helper'

class KlassTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
