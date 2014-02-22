class AddIsajaxToMobileDownloadTimes < ActiveRecord::Migration
  def change
		add_column	:mobile_download_times,	:is_ajax,	:boolean
  end
end
