class Startup < ApplicationRecord

    has_many :founders
    has_many :users, through: :founders

    belongs_to :admin, class_name: "User"

    validate :start_date_cannot_be_in_the_past
    
    validate :duration_is_multiple_of_5
    validates :duration, 
        presence: true,
        numericality: { greater_than_or_equal_to: 5 }

    validates :title, 
        presence: true,
        length: { minimum: 5 },
        length: { maximum: 140 }
    validates :description, 
        presence: true,
        length: { minimum: 20 },
        length: { maximum: 1000 }
    validates :price, 
        presence: true,
        length: { minimum: 1 },
        length: { maximum: 1000 }
        validates :location, presence: true

    def start_date_cannot_be_in_the_past
        errors.add(:start_date, "can't be in the past") if
          !start_date.blank? and start_date < Date.today
    end


    def duration_is_multiple_of_5
        errors.add(:duration, "has to be a multiple of 5") if
          duration%5 != 0
    end
end


