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

class Favorate < ApplicationRecord
  belongs_to :favorer, class_name: User, foreign_key: 'user_id'
  belongs_to :likable, polymorphic: true
end
