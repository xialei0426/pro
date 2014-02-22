require 'espider'
require 'active_record'
require 'pidfile'
require 'yaml'
PidFile.new
class VerticalTaGhotelRank < ActiveRecord::Base
	establish_connection(YAML.load_file(File.expand_path('../../../config/database.yml', __FILE__))['customization'])
end
VerticalTaGhotelRank.all.find_each do |vtgr|
	id = vtgr['partner_id']
	p id
	begin
		ta = ESpider::Front::TA::Advisor.new(id)
	rescue Net::ReadTimeout => e
		warn e.to_s
		next
	rescue Errno::ETIMEDOUT => e 
		warn e.to_s
		next
	end
	ranks = ta.rank
	p ranks
	ranks.each_with_index do |rank, index|
		break if index>=10
		vtgr.send(:"rank#{index+1}=",rank)
	end
	p vtgr
	vtgr.save
	# if 0<ranks.size
	# 	ta_rank.rank1 = ranks[0]
	# end
	# if 1<ranks.size
	# 	ta_rank.rank2 = ranks[1]
	# end
	# if 2<ranks.size
	# 	ta_rank.rank3 = ranks[2]
	# end
	# if 3<ranks.size
	# 	ta_rank.rank4 = ranks[3]
	# end
	# if 4<ranks.size
	# 	ta_rank.rank5 = ranks[4]
	# end
	# if 5<ranks.size
	# 	ta_rank.rank6 = ranks[5]
	# end
	# if 6<ranks.size
	# 	ta_rank.rank7 = ranks[6]
	# end
	# if 7<ranks.size
	# 	ta_rank.rank8 = ranks[7]
	# end
	# if 8<ranks.size
	# 	ta_rank.rank9 = ranks[8]
	# end
	# if 9<ranks.size
	# 	ta_rank.rank10 = ranks[9]
	# end
end
