class User < ApplicationRecord
    has_many :events, through: :attendances
    has_many :attendances
    has_many :admin_events, foreign_key: "event_admin_id", class_name: "Event", dependent: :destroy
    validates :password, presence: true, length: { minimum: 2 }
    validates :email, presence: true
end
