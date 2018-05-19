class AddDatestringToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :datestring, :string
  end
end
