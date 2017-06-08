class CreateQuestions < ActiveRecord::Migration
  def change
    table_create :questions do |t|
      t.string :question, null: false
      t.integer :user_id, foreign_key: true, null:false
      t.integer :commentable_id
      t.string  :commentable_type
      t.integer :votable_id
      t.string :votable_type

      t.timestamps
    end

    add_index :comments [:commentable_id, :commentable_type]
    add_index :votes [:votable_id, :votable_type]

  end
end
