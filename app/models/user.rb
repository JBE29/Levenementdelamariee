class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :events, through: :attendances
    has_many :attendances
    has_many :admin_events, foreign_key: "event_admin_id", class_name: "Event", dependent: :destroy
    validates :password, presence: true, length: { minimum: 1 }
    validates :email, presence: true
end
