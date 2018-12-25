class Size < ApplicationRecord
  belongs_to :manufacture
  has_many :reserve, dependent: :destroy
  enum name: {
		"155/65Ｒ13":1,
		"155/65Ｒ14":2,
		"165/55Ｒ14":3,
		"165/55Ｒ15":4,
		"165/70Ｒ14":5,
		"175/65Ｒ14":6,
		"175/70Ｒ14":7,
		"175/65Ｒ15":8,
		"185/70Ｒ14":9,
		"185/65Ｒ15":10,
		"195/65Ｒ15":11,
		"205/65Ｒ15":12,
  }
end
