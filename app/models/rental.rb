class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :minou

  # Validations
  validates :begin_date,  presence: true
  validates :end_date,    presence: true # Devra etre superieur a begin_date, a faire une fois les date picker done
  validates :user,        presence: true
  validates :minou,       presence: true
  # A rajouter lorsque les date picker auront ete finalises
  # validates :rental_price,
end
