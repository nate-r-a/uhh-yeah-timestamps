class ChangeTimestampStartToIntAndRemoveEnd < ActiveRecord::Migration[5.2]
  def change
    change_column :timestamps, :start, :integer
    remove_column :timestamps, :end
  end
end
