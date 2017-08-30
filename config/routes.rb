Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  
  resources :books
  
  resources :articles do
    resources :comments
  end

  resources :user do
    resources :articles
  end
   
   resources :user do
    resources :comments
  end

  resources :colleges do
    resources :students
  end

  resources :user do
    resources :books
  end

  root 'welcome#index'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 