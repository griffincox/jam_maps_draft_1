class Message < ApplicationRecord
  # Direct associations

  belongs_to :from_user,
             :class_name => "User"

  belongs_to :to_user,
             :class_name => "User"

  # Indirect associations

  # Validations

end
