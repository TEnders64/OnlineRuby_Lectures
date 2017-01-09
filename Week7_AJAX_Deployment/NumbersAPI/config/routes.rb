Rails.application.routes.draw do
  root 'numbers#index'
  get 'numbers' => 'numbers#numbers_getter'
end
