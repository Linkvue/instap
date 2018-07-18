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

class History < ApplicationRecord
  belongs_to :reader, class_name: User
  belongs_to :post
end
