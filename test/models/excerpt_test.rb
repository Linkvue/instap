# == Schema Information
#
# Table name: excerpts
#
#  id         :bigint(8)        not null, primary key
#  reader_id  :uuid
#  post_id    :uuid
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ExcerptTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
