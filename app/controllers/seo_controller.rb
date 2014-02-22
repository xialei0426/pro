class SeoController < ApplicationController
	# def index
	# 	if params[:delete_state].blank?
	# 		@delete_state = "未处理"
	# 	else
	# 		@delete_state = params[:delete_state]
	# 	end
	# 	if params[:run_state].blank?
	# 		@run_state = "未处理"
	# 	else
	# 		@run_state = params[:run_state]
	# 	end
	# end
	def delete
		start_index = params[:start]
		end_index = params[:end]
		# res = Pr.where(["id between ? and ?", 3, 5])
		res = Pr.delete_all(["id between ? and ?", start_index, end_index])
		if res>0
			delete_state = "删除成功"
		else
			delete_state = "删除失败"
		end
		redirect_to :action=>:index,:delete_state=>delete_state
	end
	def run
		res = system "rake prun &" 
		redirect_to :action=>:index,:run_state=>"已启动"
	end
end
