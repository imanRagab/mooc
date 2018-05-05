class Lecture < ApplicationRecord

    #attachment uploader
    mount_uploader :attachment, AttachmentUploader

    #lecture associations
    belongs_to :course
end
