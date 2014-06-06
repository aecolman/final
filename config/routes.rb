Rails.application.routes.draw do

# Custom home page
get "/" => "home#index"

# Resource: Trips

  # --- Create
  get "/trips/new" => 'trips#new'
  post "/trips" => 'trips#create'

  # --- Read
  get "/trips" => 'trips#index'
  get "/trips/:id" => 'trips#show'

  # -- Update
  get "/trips/:id/edit" => 'trips#edit'
  patch "/trips/:id" => 'trips#update'

  # --- Delete
  delete "/trips/:id" => 'trips#destroy'


# Resource: Cars

  # --- Create
  get "/cars/new" => 'cars#new'
  post "/cars" => 'cars#create'

  # --- Read
  get "/cars" => 'cars#index'
  get "/cars/:id" => 'cars#show'

  # -- Update
  get "/cars/:id/edit" => 'cars#edit'
  patch "/cars/:id" => 'cars#update'

  # --- Delete
  delete "/cars/:id" => 'cars#destroy'

# Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'



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
