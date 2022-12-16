class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum user_role: [:user, :admin]

  validates :name, :phone, :last_name, presence: true
end
