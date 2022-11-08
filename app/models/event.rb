class Event < ApplicationRecord
    has_many :attendances, dependent: :destroy
    has_many :users, through: :attendances
    belongs_to :event_admin, class_name: "User"

    validates :start_date, presence: true
    validates :duration, presence: true
    validates :title, presence: true
    

end
