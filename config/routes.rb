RebalanceApp::Application.routes.draw do

  match 'pas_securities/get_securities_data' => 'pas_securities#get_securities_data'
  resources :pas_securities


  resources :pas_positions


  resources :pas_accounts


  resources :rails


  resources :rebalance_trades


  resources :security_similars



  match 'rebalance_refs/lsbygroupid/:id' =>'rebalance_refs#lsbygroupid'
  resources :rebalance_refs  do
    match ':controller(/:action(/:id))(.:format)'
  end



 match 'rebalancegroups/returnxml' => 'rebalancegroups#returnxml'
  resources :rebalancegroups do

  end

  match '/rebalancegroups/index' => 'rebalancegroups#index'

  #resource :rebalancehomes

  #match 'RebalanceHome', :to=>'rebalancegroups#index' , :as=>'RebalanceHome'



  #match 'rebalancehomes/index' =>'rebalancehomes#index'


 # get 'rebalancehomes/index'
  #root :to => 'rebalancehomes#index'

  get 'rebalancegroups/index'
  root :to => 'rebalancegroups#index'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
