class Course < ApplicationRecord
      
    #validations
    validates :title, :user_id, presence: true

    #course associations
    belongs_to :user
    has_many :lectures
end
