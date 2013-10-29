class CustomersController < ApplicationController

	def index
		@customers = Customer.all
	end

	def new
		@customer = Customer.new
	end

	def create
		customer = Customer.create(params[:customer])
		redirect_to root_path
	end

	def show
		id = params[:id]
		@customer = Customer.find(id)
	end

	def edit
		id = params[:id]
		@customer = Customer.find(id)
	end

	def update
		id = params[:id]
		customer = Customer.find(id)
		customer.update_attributes(params[:customer])
		customer.save
		redirect_to root_path
	end

	def destroy
		id = params[:id]
		customer = Customer.find(id)
		customer.destroy
		redirect_to root_path
	end
end