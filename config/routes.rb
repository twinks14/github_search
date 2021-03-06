Rails.application.routes.draw do



  root 'github_globals#index'

  # get 'github_apis/search'

  # get 'github_apis/index'
  resources :github_globals, only: [:index]
  resources :github_apis, only: [:search, :index]
  resources :keywords, only: [:index]
  resources :users, only: [:index]

  match '/keywords/add',        to: 'keywords#add',         via: 'post'
  match '/keywords/get_data',   to: 'keywords#get_data',    via: 'get'
  match '/keywords/delete',     to: 'keywords#delete',      via: 'get'

  match '/users/add_user',    to: 'users#add_user',         via: 'post'
  match '/users/get_user',    to: 'users#get_user',         via: 'get'
  match '/users/delete_user', to: 'users#delete_user',      via: 'get'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
