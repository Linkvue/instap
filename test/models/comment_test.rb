# == Schema Information
#
# Table name: comments
#
#  id           :uuid             not null, primary key
#  title        :string
#  content      :string
#  author_id    :uuid
#  post_id      :uuid
#  referer_type :string
#  referer_id   :uuid
#  published_at :datetime
#  modified_at  :datetime
#  blocked_at   :datetime
#  blocker_id   :bigint(8)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
