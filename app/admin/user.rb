ActiveAdmin.register User do
    index do
        selectable_column
        id_column
        column :email
        column :gender
        column :date_of_birth
        column :profile_picture
        column :created_at
        actions
      end

    filter :email 
    filter :gender 
    filter :created_at
end