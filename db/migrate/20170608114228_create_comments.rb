class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment, null: false
      t.integer :user_id, null:false
      t.integer :votable_id
      t.string :votable_type

      t.timestamps(null: false)
    end

  end
end
