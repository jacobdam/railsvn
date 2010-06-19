Railsvn::Application.routes.draw do
  root :to => "homes#homepage"

  resources :articles
end
