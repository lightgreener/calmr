User.destroy_all
u1 = User.create :email => 'brittany@ga.com', :name => 'Brittany', :password => 'chicken', :is_admin => true
u2 = User.create :email => 'raeng@ga.com', :name => 'Raeng', :password => 'chicken', :is_admin => true
u3 = User.create :email => 'giti@ga.com', :name => 'Giti', :password => 'chicken',  :is_admin => true
u4 = User.create :email => 'henry@ga.com', :name => 'Henry', :password => 'chicken',  :is_admin => true
u5 = User.create :email => 'bob@ga.com', :name => 'Bob',:password => 'chicken', :is_admin => false
puts "#{ User.count } users"
