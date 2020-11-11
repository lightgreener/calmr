User.destroy_all
u1 = User.create :email => 'brittany@ga.com', :name => 'Brittany', :password => 'chicken', :admin => true
u2 = User.create :email => 'raeng@ga.com', :name => 'Raeng', :password => 'chicken', :admin => true
u3 = User.create :email => 'giti@ga.com', :name => 'Giti', :password => 'chicken', :admin => true
u4 = User.create :email => 'henry@ga.com', :name => 'Henry', :password => 'chicken', :admin => true
u5 = User.create :email => 'bob@ga.com', :name => 'Bob',:password => 'chicken'
puts "#{ User.count } users"

Article.destroy_all
a1 = Article.create :link => 'https://www.forbes.com/sites/ericmack/2020/03/23/now-is-the-perfect-time-to-start-meditating-and-science-proves-it/?sh=32cb129469a3', :name => 'Now Is The Perfect Time To Start Meditating, And Science Proves It'
a2 = Article.create :link => 'https://www.nytimes.com/2020/11/02/well/mind/election-anxiety-stress-relief-calm.html', :name => 'Peak Anxiety? Here Are 10 Ways to Calm Down'
puts "#{ Article.count } articles"

Comment.destroy_all
c1 = Comment.create :content => 'first comment'
c2 = Comment.create :content => 'second comment'
puts "#{ Comment.count } comments"

puts "users and articles"
u1.articles << a1 << a2
u2.articles << a1 << a2
u3.articles << a1 << a2
u4.articles << a1

puts "articles and comments"
a1.comments << c1
a2.comments << c2
