# == Schema Information
#
# Table name: favorates
#
#  id           :bigint(8)        not null, primary key
#  user_id      :uuid
#  likable_type :string
#  likable_id   :uuid
#  likes        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class FavorateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
