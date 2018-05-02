class AddSegmentReferencesToTimestamps < ActiveRecord::Migration[5.2]
  def change
    add_reference :timestamps, :segment, foreign_key: true
  end
end
