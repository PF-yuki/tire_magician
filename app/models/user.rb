class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :firstname,presence: true,
    length: { minimum: 1, maximum: 10 }
  validates :lastname,presence: true,
    length: { minimum: 1, maximum: 10 }
  validates :telephone, length: { maximum: 15 }
  validates :telephone, uniqueness: true
  validates :email, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :reserve, dependent: :destroy
end
