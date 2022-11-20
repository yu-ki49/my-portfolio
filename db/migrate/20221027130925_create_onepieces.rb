class CreateOnepieces < ActiveRecord::Migration[6.1]
  def change
    create_table :onepieces do |t|
      t.string :day
      t.string :episode
      t.string :title
      t.string :manga

      t.timestamps
    end
  end
end
