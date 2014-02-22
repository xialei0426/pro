class AddTotalToMobileDownloadTimes < ActiveRecord::Migration
  def change
		add_column	:mobile_download_times, :total, :string
  end
end
