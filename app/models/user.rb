class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :publications
  has_many :postulations
  has_many :images, as: :imageable

  enum :role, [:normal_user, :admin]
end