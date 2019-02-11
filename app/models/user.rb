class User < ApplicationRecord
    after_create :welcome_send
    has_many :founders
    has_many :startups, through: :founders
    
    has_many :startups, foreign_key: 'admin_id', class_name: "Startup"

    
    def welcome_send
      UserMailer.welcome_email(self).deliver_now
    end

end



has_many :attending_events, foreign_key: 'attendant_id', class_name: "Event"

(même chose pour managed events)

*Dans Event (model)*
   belongs_to :admin, class_name: "User"

   has_many :attendances
   has_many :attendants, class_name: "User", through: :attendances