class MobileDownloadTime < ActiveRecord::Base
	has_one	:mobile_download_src
	has_one	:mobile_download_platform
	has_one	:mobile_download_ota
end
