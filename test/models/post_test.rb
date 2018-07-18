# == Schema Information
#
# Table name: posts
#
#  id           :uuid             not null, primary key
#  category_id  :uuid
#  author_id    :uuid
#  title        :string
#  content      :text
#  published_at :datetime
#  modified_at  :datetime
#  blocked_at   :datetime
#  blocker_id   :bigint(8)
#  tags         :string           is an Array
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
