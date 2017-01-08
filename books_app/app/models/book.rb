class Book < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
