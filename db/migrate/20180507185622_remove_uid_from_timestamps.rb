class RemoveUidFromTimestamps < ActiveRecord::Migration[5.2]
  def change
    remove_column :timestamps, :uid
  end
end
