class Transaction < ApplicationRecord
    belongs_to :user , optional: false
end
