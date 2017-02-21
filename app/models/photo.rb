class Photo < ActiveRecord::Base
  belongs to :place

  mount_uploader :picture, PictureUploader
end