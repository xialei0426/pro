require 'espider'
require 'active_record'
require 'yaml'
require 'pidfile'
PidFile.new
class VerticalDaodaoGhotelRank < ActiveRecord::Base
	establish_connection(YAML.load_file(File.expand_path('../../../config/database.yml', __FILE__))['customization'])
end
VerticalDaodaoGhotelRank.all.find_each do |dd_rank|
	ta = ESpider::Front::TA::Daodao.new(dd_rank['partner_id'])
	begin
		ranks = ta.rank
	rescue Exception => e
		next
	end
	ranks.each_with_index do |rank,index|
		break if index>=10 
		dd_rank.send(:"rank#{index+1}=",rank)
	end
	dd_rank.save
end