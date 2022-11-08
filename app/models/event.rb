class Event < ApplicationRecord
    has_many :attendances, dependent: :destroy
    has_many :users, through: :attendances

    validates :start_date, presence: true
    validates :duration, presence: true
    validates :title, presence: true
    belongs_to :event_admin, class_name: "User"

end
