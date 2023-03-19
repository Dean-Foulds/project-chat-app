class Post < ApplicationRecord
    validates :status, presence: true
    STATUSES = [:Ongoing, :Completed]
end
