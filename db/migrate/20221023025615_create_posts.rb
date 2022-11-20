class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.date :day
      t.string :episode
      t.string :title
      t.string :manga
      t.string :chapter

      t.timestamps
    end
  end
end
