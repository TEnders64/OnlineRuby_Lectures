Rails.application.routes.draw do
  root 'sessions#new'
  post 'users' => 'users#create'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'
  get 'users/:id' => 'users#show'
  get 'dashboards' => 'dashboards#index'
  get 'checkout' => 'dashboards#checkout'
end
