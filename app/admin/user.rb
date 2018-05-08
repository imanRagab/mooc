ActiveAdmin.register User do

    #######################################
    #custmize data showed in the index page
    index do
        selectable_column
        id_column
        column :name
        column :email
        column :gender
        column :date_of_birth
        column :profile_picture
        column :created_at
        actions
      end

    #######################################
    #custmize data showed in the show page
    show do |user|
        attributes_table do
            row :name
            row :email
            row :gender
            row :date_of_birth
            row :profile_picture
            row :created_at
        end
    end

    #######################################
    #custmize create/edit form fields 
    form do |f|
        f.inputs "Member Details" do
            f.input :name
            f.input :email
            if f.object.new_record?
                f.input :password
                f.input :password_confirmation
            end
            f.input :gender
            f.input :date_of_birth
            f.input :profile_picture
        end
        f.button :Submit
    end

    #######################################
    #custmize filters for users

    filter :email 
    filter :gender 
    filter :created_at

    #######################################
    #add permitted parameters
    permit_params :list, :of, :attributes, :on, :model, :name, :email, :password, :password_confirmation, :gender, :profile_picture, :date_of_birth

end