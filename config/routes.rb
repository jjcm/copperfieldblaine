SurveyThree::Application.routes.draw do

  resources :lifestyle_cues do
    member do
      get 'new_lifestyle_subgenre_partial'
    end
  end
  resources :lifestyle_subgenres
  
  resources :lifestyle_cue_inference_connectors
  resources :lifestyle_subgenre_inference_connectors
  resources :lifestyle_cue_inference_clarification_connectors
  resources :lifestyle_subgenre_inference_clarification_connectors

  resources :analytics, :only => [:index]
  get '/analytics/lifestyle'
  get '/analytics/falsetruth'
  get '/analytics/truthiness'


  resources :inference_clarification_weights


  resources :inference_clarifications


  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end

  resources :user_inference_responses


  resources :user_answers


  resources :users do
    member do
      get 'new_inference_clarification_weight_partial'
      get 'new_inference_clarification_partial'
      get 'new_user_inference_response_partial'
      get 'followup'
    end
  end


  resources :inferences do
    collection do
      get 'new_inference_clarification_weight_partial'
      get 'new_inference_clarification_partial'
      get 'new_lifestyle_cue_partial'
      get 'new_lifestyle_subgenre_partial'
      get 'new_clarification_lifestyle_subgenre_partial'
    end
  end


  resources :inference_weights


  resources :answers


  resources :questions


  resources :surveys do
    member do
        get 'new_answer_partial'
        get 'new_inference_weight_partial'
        get 'new_user_answer_partial'
    end
  end

  root :to => "surveys#show", :id => 5



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
