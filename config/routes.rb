Railsvn::Application.routes.draw do |map|
  constraints(:subdomain => /^$/) do
    match "/", :to => redirect("http://www.#{APP_CONFIG[:domain]}/")
    match "/*path", :to => redirect("http://www.#{APP_CONFIG[:domain]}/")
  end

  constraints(:subdomain => /www/) do
    root :to => "homes#homepage"
    resources :articles
    devise_for :users
  end
end
