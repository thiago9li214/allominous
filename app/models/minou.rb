class Minou < ApplicationRecord
  belongs_to :user

  # Species and personalities definition
  SIZES         = %w(petit moyen grand)
  SPECIES       = %w(chat lion tigre lynx panthère)
  PERSONALITIES = %w(grumpy susceptible sournois espiègle têtu simplet dragueur calin)

  # Validations
  validates :name,          presence: true,   uniqueness: true
  validates :size,          presence: true,   inclusion: { in: SIZES }
  validates :specie,        presence: true,   inclusion: { in: SPECIES }
  validates :age,           presence: true,   numericality: true
  validates :personality,   presence: true,   inclusion: { in: PERSONALITIES }
  validates :description,   presence: true
  validates :daily_price,   presence: true,   numericality: true
end
