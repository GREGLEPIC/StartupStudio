class Founder < ApplicationRecord
    after_create :new_founder

    belongs_to :user
    belongs_to :startup


    def new_founder
        UserMailer.new_founder_email(self).deliver_now
    end

end
