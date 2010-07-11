Factory.define :user do |f|
  f.email { |u| Faker::Internet.email }
  f.password "secret"
end

Factory.define :admin_user, :parent => :user do |f|
  f.admin true
end
