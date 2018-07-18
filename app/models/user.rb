# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  name                   :string
#  avatar_path            :string
#  alipay_id              :string
#  tencent_id             :string
#  blocked_at             :datetime
#  blocker_id             :bigint(8)
#  roles                  :string           is an Array
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :omniauthable

  has_many :posts, foreign_key: :author_id, dependent: :destroy
  has_many :comments, foreign_key: :author_id, dependent: :destroy

  has_many :histories, foreign_key: :reader_id, dependent: :destroy
  has_many :followships, class_name: 'Followship', foreign_key: :follower_id, dependent: :destroy
  has_many :fanships, class_name: 'Followship', dependent: :destroy

  has_many :fans, through: :fanships, source: :follower
  has_many :follows, through: :followships, source: :user
end
