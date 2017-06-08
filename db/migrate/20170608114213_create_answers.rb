class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer, null:false
      t.integer :user_id, null:false
      t.integer :question_id, null:false
      t.integer :commentable_id
      t.string  :commentable_type
      t.integer :votable_id
      t.string :votable_type

      t.timestamps(null: false)
    end

  end
end
