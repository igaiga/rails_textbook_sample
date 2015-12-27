class Entry < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
