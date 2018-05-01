class AddReleaseDateToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :release_date, :datetime
  end
end
