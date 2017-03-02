class Band < ApplicationRecord
  # Direct associations

  has_many   :gigposts,
             :dependent => :destroy

  has_many   :memberships,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
