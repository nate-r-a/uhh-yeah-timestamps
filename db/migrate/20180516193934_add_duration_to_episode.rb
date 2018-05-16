class AddDurationToEpisode < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :duration, :integer
  end
end
