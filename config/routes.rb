Rails.application.routes.draw do
  namespace :api do
    resources :books, except: :edit
  end

  get 'books(*path)' => 'books#index'
  root to: 'welcome#index'
end
