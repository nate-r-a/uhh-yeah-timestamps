class AddArchivedToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :archived, :boolean, :default => false
  end
end
