class CreateAots < ActiveRecord::Migration[6.1]
  def change
    create_table :aots do |t|
      t.string :day
      t.string :episode
      t.string :title
      t.string :manga

      t.timestamps
    end
  end
end
