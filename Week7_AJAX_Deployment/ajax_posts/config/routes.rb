Rails.application.routes.draw do
    root 'posts#index'
    post 'posts' => 'posts#create'
    delete 'posts/:id' => 'posts#destroy'
end
