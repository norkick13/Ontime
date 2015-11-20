Rails.application.routes.draw do
  
  #get 'comments/create'

  #get 'comments/destroy'

  

  get '/new', to: 'schedules#new'

  get  '/create', to: 'schedules#create'

   get '/show', to: 'schedules#show'

  get  '/edit', to: 'schedule#edit'

  get '/update', to: 'schedule#update'

  get '/destroy', to: 'schedule#destroy'
  
root 'schedules#index'

  resources :schedules do
    resources :comments
  end

  #get 'home#index'

  get '/help', to: 'home#help'

  get  '/contact', to:  'home#contact'

  get  '/create', to: 'home#create'

  get   '/about', to: 'home#about'
  


  #get 'admin/index'

  #get 'admin/new'

  #get 'admin/show'

  #get 'admin/edit'

  #get 'admin/create'

  #get 'admin/update'

  #get 'admin/destroy'

  devise_for :admins
   # root 'user#index'

  # get 'user/index'

  # get 'user/new'

  # get 'user/show'

  # get 'user/edit'

  # get 'user/update'

  # get 'user/destroy'

  devise_for :users

 resources :admins do
  resources :staffs
end

 
  #get 'user/new'

  #get 'user/edit'

  #get 'user/show'

  #get 'user/update'

  #get 'user/destroy'

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
