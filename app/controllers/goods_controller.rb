class GoodsController < ApplicationController

	def index
		@goods = Good.all
	end

	def new
		@good = Good.new
	end

	def create
		good = Good.create(params[:good])
		redirect_to root_path
	end

	def show
		id = params[:id]
		@good = Good.find(id)
	end

	def update
		id = params[:id]
		good = Good.find(id)
		good.update_attributes(params[:good])
		good.save
		redirect_to root_path
	end

	def destroy
		id = params[:id]
		customer = Customer.find(id)
		customer.destroy
		redirect_to root_path
	end
end