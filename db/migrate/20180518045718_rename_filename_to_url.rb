class RenameFilenameToUrl < ActiveRecord::Migration[5.2]
  def change
    rename_column :episodes, :filename, :url
  end
end
