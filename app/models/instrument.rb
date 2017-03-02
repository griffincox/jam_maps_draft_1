class Instrument < ApplicationRecord
  # Direct associations

  has_many   :users,
             :foreign_key => "primary_instrument_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
