class AddLiveToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :live, :boolean
  end
end
