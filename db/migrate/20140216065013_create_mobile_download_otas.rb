class CreateMobileDownloadOtas < ActiveRecord::Migration
  def change
    create_table :mobile_download_otas do |t|
			t.string	:name
      t.timestamps
    end
  end
end
