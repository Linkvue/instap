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

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User'
  has_many :favorates, class_name: 'Favorate', as: :likable

  belongs_to :referer, polymorphic: true # Another comment, for now
  has_many :refers, as: :referer, class_name: 'Comment'

  def likes
    self.favorates.sum(:likes)
  end
end
