class Manufacture < ApplicationRecord
  has_many :sizes, dependent: :destroy
  attachment :image
end

