# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#users = User.create([{ :first_name => "john", :last_name => "joko", :email => "apaaja@apaja.com", :username => "john.joko", :address => "kebon no 4 jalak harupat", :age => 20, :birthday => "1992-01-09" },
#{ :first_name => "john", :last_name => "mamat", :email => "apaaja@apaja2.com", :username => "john.mamat", :address => "kebon no 4 jalak harupat", :age => 21, :birthday => "1991-01-09" },
#{ :first_name => "john", :last_name => "jajang", :email => "apaaja@apaja3.com", :username => "john.jajang", :address => "kebon no 4 jalak harupat", :age => 22, :birthday => "1990-01-09" },
#{ :first_name => "john", :last_name => "son", :email => "apaaja@apaja4.com", :username => "john.son", :address => "kebon no 4 jalak harupat", :age => 23, :birthday => "1989-01-09" },
#{ :first_name => "john", :last_name => "jaka", :email => "apaaja@apaja5.com", :username => "john.jaka", :address => "kebon no 4 jalak harupat", :age => 23, :birthday => "1989-01-09" }])

#countries = Countries.create([{ :code => "id", :name => "cimahi", :user_id => 1 },
#{ :code => "id", :name => "cimahi", :user_id => 2 },
#{ :code => "id", :name => "cilegon", :user_id => 3 },
#{ :code => "id", :name => "ciamis", :user_id => 4 },
#{ :code => "usa", :name => "los angeles", :user_id => 5 },
#{ :code => "frc", :name => "paris", :user_id => 6 }])

#articles = Article.create([{ :title => "apa aja share", :body => "bebas apapun juga", :rating => 6, :user_id => 1 },
#{ :title => "apa ajaa", :body => "bebas apapun juga 2", :rating => 7, :user_id => 2 },
#{ :title => "apa ajaaa", :body => "bebas apapun juga 3", :rating => 8, :user_id => 3 },
#{ :title => "apa ajaaaa", :body => "bebas apapun juga 4", :rating => 9, :user_id => 4 },
#{ :title => "apa ajaaaaa", :body => "bebas apapun juga 5", :rating => 4, :user_id => 5 },
#{ :title => "apa ajaaaaaa", :body => "bebas apapun juga 6", :rating => 3, :user_id => 6 }])

#comments = Comment.create([{ :content => "lucu euy", :article_id => 1 },
#{ :content => "lucu euy 2", :article_id => 2 },
#{ :content => "lucu euy 3", :article_id => 3 },
#{ :content => "lucu euy 4", :article_id => 4 },
#{ :content => "lucu euy 4", :article_id => 5 },
#{ :content => "lucu euy 5", :article_id => 6 }])

#products = Product.create([{ :name => "pespodent", :price => 2500, :description => "pasta gigi", :user_id => 1 },
#{ :name => "aspiro shoap", :price => 1500, :description => "sabun mandi", :user_id => 2 },
#{ :name => "topo skoru", :price => 1000, :description => "koran", :user_id => 3 },
#{ :name => "lolo pop", :price => 500, :description => "permen", :user_id => 4 },
#{ :name => "lolo popi", :price => 500, :description => "permen", :user_id => 5 },
#{ :name => "crear", :price => 500, :description => "shampo", :user_id => 6 }])

#categories = Categories.create([{ :name => "alat mandi" },
#{ :name => "alat mandi 2" },
#{ :name => "alat mandi 3" },
#{ :name => "alat mandi 4" },
#{ :name => "alat mandi 5" },
#{ :name => "alat mandi 6" }])

categories_products = Categories_product.create([{ :product_id => 1, :categories_id => 1 },
{ :product_id => 2, :categories_id => 2},
{ :product_id => 3, :categories_id => 3},
{ :product_id => 4, :categories_id => 4},
{ :product_id => 5, :categories_id => 5},
{ :product_id => 6, :categories_id => 6}])
