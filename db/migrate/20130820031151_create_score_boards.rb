class CreateScoreBoards < ActiveRecord::Migration
  def change
    create_table :score_boards do |t|
      t.integer :user_id
      t.integer :points

      t.timestamps
    end
  end
end
