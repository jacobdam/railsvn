admin_user = User.new(:email => 'admin@railsvn.com', :password => 'letmein')
admin_user.admin = true
admin_user.save!
