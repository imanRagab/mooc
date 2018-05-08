class Comment < ApplicationRecord

    #validations
    validates :text, :lecture_id, :user_id, presence: true

    #comment associations
    belongs_to :user
    belongs_to :lecture

end
