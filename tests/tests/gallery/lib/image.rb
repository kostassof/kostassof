class Image < Sequel::Model
  mount_uploaders :file, ImageUploader
end
