class Manufacture < ApplicationRecord
  has_many :sizes, dependent: :destroy
  has_attached_file :photo,
                      styles: { medium: "300x300>", thumb: "100x100>" },
                      path: "#{Rails.root}/app/assets/images/:filename"
   validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
