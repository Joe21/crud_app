CrudApp::Application.routes.draw do

	resources :customers
	resources :stores
	resources :goods

	root :to => 'customers#index'

# 	  customers GET    /customers(.:format)          customers#index
#               POST   /customers(.:format)          customers#create
#  new_customer GET    /customers/new(.:format)      customers#new
# edit_customer GET    /customers/:id/edit(.:format) customers#edit
#      customer GET    /customers/:id(.:format)      customers#show
#               PUT    /customers/:id(.:format)      customers#update
#               DELETE /customers/:id(.:format)      customers#destroy
#        stores GET    /stores(.:format)             stores#index
#               POST   /stores(.:format)             stores#create
#     new_store GET    /stores/new(.:format)         stores#new
#    edit_store GET    /stores/:id/edit(.:format)    stores#edit
#         store GET    /stores/:id(.:format)         stores#show
#               PUT    /stores/:id(.:format)         stores#update
#               DELETE /stores/:id(.:format)         stores#destroy
#         goods GET    /goods(.:format)              goods#index
#               POST   /goods(.:format)              goods#create
#      new_good GET    /goods/new(.:format)          goods#new
#     edit_good GET    /goods/:id/edit(.:format)     goods#edit
#          good GET    /goods/:id(.:format)          goods#show
#               PUT    /goods/:id(.:format)          goods#update
#               DELETE /goods/:id(.:format)          goods#destroy
#          root        /                             customers#index 
end
