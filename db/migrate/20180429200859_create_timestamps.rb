class CreateTimestamps < ActiveRecord::Migration[5.2]
  def change
    create_table :timestamps do |t|
      t.string :start
      t.string :comment
      t.references :episode, foreign_key: true

      t.timestamps
    end
  end
end
