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

class Followship < ApplicationRecord
  belongs_to :user
  belongs_to :follower, class_name: 'User'
end
