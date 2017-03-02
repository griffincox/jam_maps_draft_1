class Genre < ApplicationRecord
  # Direct associations

  has_many   :bands,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
