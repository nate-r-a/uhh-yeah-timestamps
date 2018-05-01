class AddFilenameToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :filename, :string
  end
end
