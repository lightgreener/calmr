User.destroy_all
u1 = User.create :email => 'brittany@ga.com', :name => 'Brittany', :password => 'chicken', :admin => true
u2 = User.create :email => 'raeng@ga.com', :name => 'Raeng', :password => 'chicken', :admin => true
u3 = User.create :email => 'giti@ga.com', :name => 'Giti', :password => 'chicken', :admin => true
u4 = User.create :email => 'henry@ga.com', :name => 'Henry', :password => 'chicken', :admin => true
u5 = User.create :email => 'bob@ga.com', :name => 'Bob',:password => 'chicken'
puts "#{ User.count } users"

Article.destroy_all
a1 = Article.create :link => 'https://youtu.be/inpok4MKVLM', :name => '5-Minute Meditation You Can Do Anywhere'
a2 = Article.create :link => 'https://www.nytimes.com/2020/11/02/well/mind/election-anxiety-stress-relief-calm.html', :name => 'Peak Anxiety? Here Are 10 Ways to Calm Down'
puts "#{ Article.count } articles"

Comment.destroy_all
c1 = Comment.create :content => 'first content'
c1 = Comment.create :content => 'second content'
puts "#{ Comment.count } comments"
