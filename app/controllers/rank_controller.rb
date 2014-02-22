class RankController < ApplicationController
	def index
		@dd_state = params[:dd_state]
		@dd_g_state = params[:dd_g_state]
		@ta_state = params[:ta_state]
		@ta_g_state = params[:ta_g_state]
	end
	def dd_rank
		res = system("nohup ruby #{File.join(Rails.root, 'lib', 'rank', 'rank_dd.rb')} &")
		if res
			redirect_to :action => :index, :dd_state => '程序已运行'
		else
			render :text=>res
		end
	end
	def dd_g_rank
		# render :text => "nohup ruby #{File.join(Rails.root, 'lib', 'rank', 'rank_g_dd.rb')} &"
		res = system("nohup ruby #{File.join(Rails.root, 'lib', 'rank', 'rank_dd_g.rb.rb')} &")
		if res
			redirect_to :action => :index, :dd_state => '程序已运行'
		else
			render :text=>res
		end
	end
end