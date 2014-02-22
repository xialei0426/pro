class CreateMobileDownloadTimes < ActiveRecord::Migration
  def change
    create_table :mobile_download_times do |t|
			t.integer	:src_id,	:null=>false
			t.integer	:ota_id,	:null=>false
			t.integer	:platform_id,	:null=>false
			t.string	:url, :null=>false
      t.timestamps
    end
  end
end
