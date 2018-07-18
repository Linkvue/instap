# == Schema Information
#
# Table name: followships
#
#  id          :uuid             not null, primary key
#  user_id     :uuid
#  follower_id :uuid
#  start_at    :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class FollowshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
