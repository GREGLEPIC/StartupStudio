class User < ApplicationRecord
    after_create :welcome_send
    has_many :founders
    has_many :startups, through: :founders
    
    has_many :startups, foreign_key: 'admin_id', class_name: "Startup"

    
    def welcome_send
      UserMailer.welcome_email(self).deliver_now
    end

end