Railsvn::Application.routes.draw do
  constraints(:subdomain => /www/) do
    root :to => "homes#homepage"
    resources :articles, :shallow => true do
      resources :comments, :except => [ :index, :new, :show ]
    end
    devise_for :users, :controllers => { :sessions => 'sessions'}
  end

  match "/", :to => redirect("http://www.#{APP_CONFIG[:domain]}/")
  match "/*path", :to => redirect("http://www.#{APP_CONFIG[:domain]}/%{path}")
end
