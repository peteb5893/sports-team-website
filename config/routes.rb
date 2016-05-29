Rails.application.routes.draw do

  get '/login' => 'admin/sessions#new'
  get '/logout' => 'admin/sessions#destroy'

  namespace :admin do
    resources :moderators, only: [:index, :edit, :update]
    resources :sessions, only: [:new, :create, :destroy]
    resources :members
  end

end
