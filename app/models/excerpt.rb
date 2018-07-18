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

class Excerpt < ApplicationRecord
  belongs_to :reader, class_name: User
  belongs_to :post
end
