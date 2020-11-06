User.destroy_all
u1 = User.create :email => 'brittany@ga.com', :name => 'Brittany', :password => 'chicken'
u2 = User.create :email => 'raeng@ga.com', :name => 'Raeng', :password => 'chicken'
u3 = User.create :email => 'giti@ga.com', :name => 'Giti', :password => 'chicken'
u4 = User.create :email => 'henry@ga.com', :name => 'Henry', :password => 'chicken'
u5 = User.create :email => 'bob@ga.com', :name => 'Bob',:password => 'chicken'
puts "#{ User.count } users"

Article.destroy_all
a1 = Article.create :link => 'https://www.forbes.com/sites/ericmack/2020/03/23/now-is-the-perfect-time-to-start-meditating-and-science-proves-it/?sh=32cb129469a3'
a2 = Article.create :link => 'https://www.nytimes.com/topic/subject/meditation'
puts "#{ Article.count } articles"

Comment.destroy_all
c1 = Comment.create :content => 'first content'
c1 = Comment.create :content => 'second content'
puts "#{ Comment.count } comments"
