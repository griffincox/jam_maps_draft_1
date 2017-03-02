class Band < ApplicationRecord
  # Direct associations

  belongs_to :genre

  has_many   :posts,
             :dependent => :destroy

  has_many   :gigposts,
             :dependent => :destroy

  has_many   :memberships,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :memberships,
             :source => :user

  # Validations

end
