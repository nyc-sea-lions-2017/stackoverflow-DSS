class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :vote, null:false

      t.timestamps(null: false)
    end
  end
end