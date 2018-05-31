class Lecture < ApplicationRecord

    #attachment uploader
    mount_uploader :attachment, AttachmentUploader

    #validations
    validates :content, :course_id, presence: true

    #lecture associations
    belongs_to :course
    has_many :comments

    #make it votable to be liked/unliked
    acts_as_votable
end
