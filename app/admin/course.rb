ActiveAdmin.register Course do

    #######################################
    #custmize data showed in the index page
    index do
        selectable_column
        id_column
        column :title
        column :user
        column :created_at
        actions
      end

    #######################################
    #custmize data showed in the show page
    show do |user|
        attributes_table do
            row :title
            row :user
            row :created_at
        end
    end

    #######################################
    #custmize filters for courses

    filter :title
    filter :user
    filter :created_at

    #######################################
    #add permitted parameters
    permit_params :list, :of, :attributes, :on, :model, :title, :user_id

end