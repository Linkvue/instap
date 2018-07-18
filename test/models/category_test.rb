# == Schema Information
#
# Table name: categories
#
#  id         :uuid             not null, primary key
#  title      :string
#  details    :text
#  blocked_at :datetime
#  blocker_id :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
