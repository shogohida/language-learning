class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :languages
  has_many :words, through: :languages
  has_many :grammers, through: :languages
  has_many :conversations, through: :languages
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
