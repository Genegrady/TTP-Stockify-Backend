class User < ApplicationRecord
    has_secure_password

    has_many :transactions
    accepts_nested_attributes_for :transactions, :allow_destroy => true

    validates_confirmation_of :password, allow_nil: true, allow_blank: false
    before_validation{
       (self.email = self.email.to_s.downcase) 
    }
    validates :email, uniqueness: true, presence: true
end
