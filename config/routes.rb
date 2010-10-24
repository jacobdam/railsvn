Railsvn::Application.routes.draw do
  constraints(:subdomain => /www/) do
    root :to => "homes#homepage"
    resources :articles
    devise_for :users
  end

  match "/", :to => redirect("http://www.#{APP_CONFIG[:domain]}/")
  match "/*path", :to => redirect("http://www.#{APP_CONFIG[:domain]}/%{path}")
end
