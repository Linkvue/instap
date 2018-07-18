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

class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :category
  has_many :favorates, class_name: 'Favorate', as: :likable
  has_many :comments

  def likes
    self.favorates.sum(:likes)
  end
end
