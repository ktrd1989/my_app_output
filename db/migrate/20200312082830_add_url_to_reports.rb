class AddUrlToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :url, :text
  end
end
