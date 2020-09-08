class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  mount_uploader :voice, VoicesUploader
end
