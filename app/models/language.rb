class Language < ApplicationRecord
  belongs_to :user
  has_many :words
  has_many :grammers
  has_many :conversations
end
