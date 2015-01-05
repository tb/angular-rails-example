Rails.application.routes.draw do
  namespace :api do
    resources :books, except: :edit
  end

  get 'books(*path)' => 'application#index'
  get 'favorites(*path)' => 'application#index'
  root to: 'welcome#index'
end
