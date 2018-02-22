class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :minous
  has_many :rentals
  mount_uploader :photo, PhotoUploader

  validates :first_name, presence: :true, allow_blank: :false
  validates :last_name, presence: :true, allow_blank: :false
  validates :address, presence: :true, allow_blank: :false

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
