class Size < ApplicationRecord
  belongs_to :manufacture
  has_many :reserve, dependent: :destroy
  enum name: {
		"155_65R13":1,
		"155_65R14":2,
		"165_55R14":3,
		"165_55R15":4,
		"165_70R14":5,
		"175_65R14":6,
		"175_70R14":7,
		"175_65R15":8,
		"185_70R14":9,
		"185_65R15":10,
		"195_65R15":11,
		"205_65R15":12,
  }
end
