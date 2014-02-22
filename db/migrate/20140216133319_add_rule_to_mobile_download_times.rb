class AddRuleToMobileDownloadTimes < ActiveRecord::Migration
  def change
    add_column :mobile_download_times, :rule, :string
  end
end
