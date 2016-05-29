Rails.application.routes.draw do

  get '/login' => 'admin/sessions#new'

  namespace :admin do
    resources :moderators, only: [:index, :edit, :update]
    resources :sessions, only: [:new, :create, :destroy]
  end

end
