class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :instructor_role, :boolean, default: false
  end
end
