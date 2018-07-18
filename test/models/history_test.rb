# == Schema Information
#
# Table name: histories
#
#  id         :bigint(8)        not null, primary key
#  reader_id  :uuid
#  post_id    :uuid
#  lineno     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class HistoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
