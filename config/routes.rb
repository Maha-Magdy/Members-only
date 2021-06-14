Rails.application.routes.draw do
  devise_for :users , :controllers => { registrations: 'registrations' }
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  resources :posts, only: [:new, :create, :index]
  root "posts#index"
end
