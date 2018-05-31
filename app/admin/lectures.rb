ActiveAdmin.register Lecture do

    #######################################
    #custmize data showed in the index page
    index do
        selectable_column
        id_column
        column :content
        column :attachment
        column :course
        column :created_at
        actions
      end

    #######################################
    #custmize data showed in the show page
    show do |user|
        attributes_table do
            row :content
            row :attachment
            row :course
            row :created_at
        end
    end

    #######################################
    #custmize filters for lectures

    filter :content
    filter :attachment
    filter :course
    filter :created_at

    #######################################
    #add permitted parameters
    permit_params :list, :of, :attributes, :on, :model, :content, :attachment, :course_id
end