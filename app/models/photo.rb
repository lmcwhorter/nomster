class Photo < ActiveRecord::Base
  belongs to :user
  belongs to :place

  mount_uploader :picture, PictureUploader
end