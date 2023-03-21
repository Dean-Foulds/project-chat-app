class Post < ApplicationRecord
    validates :status, presence: true
    belongs_to :user
    STATUSES = [:Ongoing, :Completed]
end
