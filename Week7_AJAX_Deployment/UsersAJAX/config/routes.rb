Rails.application.routes.draw do
  root 'users#index'
  get 'users/:id' => 'users#users_partial'
end
