class Record < ApplicationRecord
  mount_uploader :image, ImageUploader
end
