class CreateMoments < ActiveRecord::Migration[5.2]
  def change
    create_table :moments do |t|

      t.timestamps
    end
  end
end
