class CreateMobileDownloadSrcs < ActiveRecord::Migration
  def change
    create_table :mobile_download_srcs do |t|
			t.string	:name
      t.timestamps
    end
  end
end
