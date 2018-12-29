class Reserve < ApplicationRecord
  belongs_to :user
  belongs_to :size
  validates_uniqueness_of :day, :scope => :time
  validates :time, presence: true
  validates :car_maker, presence: true
  validates :day, inclusion:{in: (Date.today+7)..(Date.today+13)}

end
