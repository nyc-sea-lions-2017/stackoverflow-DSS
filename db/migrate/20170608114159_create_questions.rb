class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question, null: false
      t.integer :user_id, foreign_key: true, null:false
      t.integer :commentable_id
      t.string  :commentable_type
      t.integer :votable_id
      t.string :votable_type

      t.timestamps(null: false)
    end

  end
end
