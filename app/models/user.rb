class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :omniauthable

  has_many :posts, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id
end
