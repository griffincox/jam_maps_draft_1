class Membership < ApplicationRecord
  # Direct associations

  belongs_to :band

  belongs_to :user

  # Indirect associations

  # Validations

end
