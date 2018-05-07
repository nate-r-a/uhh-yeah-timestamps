class RemoveTitleFromEpisodes < ActiveRecord::Migration[5.2]
  def change
    remove_column :episodes, :title, :string
  end
end
