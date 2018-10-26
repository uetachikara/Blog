Rails.application.routes.draw do
  devise_for :users
  resources :blog, only: [:index, :new, :create, :destroy, :edit]
  root  'blog#index'
  get	'buns/:id' => 'blog#show'
  patch   'buns/:id'  => 'blog#update'
end
