class User < ApplicationRecord
  has_many :stats
  has_many :workouts
  has_many :cardios, through: :workouts
  has_many :exercises, through: :workouts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
