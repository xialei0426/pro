class AddColumnToMobileDownloadTimes < ActiveRecord::Migration
  def change
    add_column :mobile_download_times, :url_data, :string
  end
end
