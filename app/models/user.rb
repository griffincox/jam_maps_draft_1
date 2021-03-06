class User < ApplicationRecord
  # Direct associations

  belongs_to :primary_instrument,
             :class_name => "Instrument"

  has_many   :from_messages,
             :class_name => "Message",
             :foreign_key => "from_user_id",
             :dependent => :destroy

  has_many   :to_messages,
             :class_name => "Message",
             :foreign_key => "to_user_id",
             :dependent => :destroy

  has_many   :memberships,
             :dependent => :destroy

  # Indirect associations

  has_many   :bands,
             :through => :memberships,
             :source => :band

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
