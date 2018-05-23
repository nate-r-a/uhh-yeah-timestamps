class AddUserToTimestamps < ActiveRecord::Migration[5.2]
  def change
    add_reference :timestamps, :user, foreign_key: true
  end
end
