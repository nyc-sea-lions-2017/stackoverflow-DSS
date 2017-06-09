class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer, null:false
      t.boolean :best_answer,default: false
      t.integer :user_id, null:false
      t.integer :question_id, null:false
      t.references :commentable, polymorphic: true, index: true
      t.references :votable, polymorphic: true, index: true

      t.timestamps(null: false)
    end

  end
end
