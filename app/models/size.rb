class Size < ApplicationRecord
  belongs_to :manufacture
  has_one :reserve, dependent: :destroy
end
