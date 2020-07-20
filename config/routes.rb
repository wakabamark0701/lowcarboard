Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
 
  resources :posts, only: [:index, :new, :create] 
  resources :foods, only: [:index, :new, :create] do
    collection do
      get 'search'
    end
    # collection do
    #   get 'insearch'
    # end
  end  
end
