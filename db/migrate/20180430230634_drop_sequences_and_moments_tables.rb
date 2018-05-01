class DropSequencesAndMomentsTables < ActiveRecord::Migration[5.2]
  def up
    drop_table :sequences
    drop_table :moments
  end
  
  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
