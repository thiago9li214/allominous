class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :minous
  has_many :rentals
  # has_many :rented_minous, through: :rentals, source: :minou
  validates :first_name, presence: :true, allow_blank: :false
  validates :last_name, presence: :true, allow_blank: :false
  validates :address, presence: :true, allow_blank: :false

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
