class Room < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  has_many :users
  has_many :messages

  validates :name, :genre, presence: true
end
