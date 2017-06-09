class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question, null: false
      t.string :question_detail, null:false
      t.integer :user_id, foreign_key: true, null:false
      t.references :commentable, polymorphic: true, index: true
      t.references :votable, polymorphic: true, index: true

      t.timestamps(null: false)
    end

  end
end
