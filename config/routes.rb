Railsvn::Application.routes.draw do |map|
  root :to => "homes#homepage"

  resources :articles
  devise_for 'users'
end
