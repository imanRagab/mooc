class Course < ApplicationRecord
      
    #course associations
    belongs_to :user
    has_many :lectures
end
