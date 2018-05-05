class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :user_id
      t.integer :lecture_id
    end
  end
end
