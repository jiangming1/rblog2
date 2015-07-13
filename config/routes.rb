Rails.application.routes.draw do
  resources :smszfblogs
  resources :smszfblogs
  resources :smstags
  resources :smsreceiveds
  resources :smstags
  resources :smsuserusedtellists
  resources :smsuserusedtellists
  resources :centers
  resources :smsusers
  resources :smslogrecords
  resources :smschongzhirecords
  resources :smsnos
  resources :wxzhuanzhangs
  resources :zf_bduihuas
  resources :zf_bjietus
  resources :l1s
  resources :ls
  resources :welcomes
  #devise_for :users
  devise_for :users, :controllers => {:registrations => "users/registrations"}   
root :to => "ls#index"
  resources :azufangs
  resources :p2pproducts
  resources :documents
  resources :p2pcompanies
  resources :p2pproducts
  resources :yonghus
  resources :blogs
  resources :softnames
  resources :people
  resources :companies
  get 'azufangs/:id/tuiguang' => 'azufangs#tuiguang'
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
