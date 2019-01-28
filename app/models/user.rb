class User < ApplicationRecord

  has_many :chat_messages
  has_many :chat_room_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :img_name, ImgNameUploader
  enum sex: {男: 0, 女:1}
end
