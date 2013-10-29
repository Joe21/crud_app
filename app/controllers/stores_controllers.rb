class StoresControllers < ApplicationController

	def index
		@stores = Stores.all
	end

	def new
		@store = Store.new
	end

	def create
		store = Store.create(params[:store])
		redirect_to root_path
	end

	def show
		id = params[:id]
		@store = Store.find(id)
	end

	def update
		id = params[:id]
		store = Store.find(id)
		store.update_attributes(params[:store])
		store.save
		redirect_to root_path
	end

	def destroy
		id = params[:id]
		store = Store.find(id)
		store.destroy
		redirect_to root_path
	end
end