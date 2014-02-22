class CreateMobileDownloadPlatforms < ActiveRecord::Migration
  def change
    create_table :mobile_download_platforms do |t|
			t.string	:name
      t.timestamps
    end
  end
end
