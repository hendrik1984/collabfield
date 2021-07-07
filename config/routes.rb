Rails.application.routes.draw do
  devise_for :users, :controllers => { :regitrations => "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get 'login', to: 'devise/session#new'
  end

  root to: 'pages#index'
end
