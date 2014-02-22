task	:mobile => :environment do
	MobileDownloadTime.all.find_each do |mdt|
		res = Net::HTTP.get_response URI(mdt['url_data'])
		if mdt['is_ajax']
			p 'ajax'
		else
			page = Nokogiri::HTML(res.body)
			total = page.xpath(mdt['rule']).to_s.gsub(/(万次)|(万)/, '0000').gsub(/[^\d-]*/,'')
			p mdt['url_data']
			p total
			next
			exit
		end
		p page.class
		mdt['total'] = eval(mdt['rule']).gsub(/(万次)|(万)/, '0000').gsub(',','') unless mdt['rule'].nil?
		p mdt['total']
		mdt.save
	end
end
