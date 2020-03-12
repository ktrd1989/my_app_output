# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#書籍
book = Category.create(:name=>"書籍")

book_1 = book.children.create(:name=>"趣味・実用")
book_2 = book.children.create(:name=>"ビジネス・経済")
book_3 = book.children.create(:name=>"文学・評論")
book_4 = book.children.create(:name=>"コンピューター・IT")
book_5 = book.children.create(:name=>"歴史・地理")
book_6 = book.children.create(:name=>"資格・検定・就職")
book_7 = book.children.create(:name=>"その他")

#動画
movie = Category.create(:name=>"動画")

movie_1 = movie.children.create(:name=>"趣味・実用")
movie_2 = movie.children.create(:name=>"ビジネス・経済")
movie_3 = movie.children.create(:name=>"教育")
movie_4 = movie.children.create(:name=>"自己啓発")
movie_5 = movie.children.create(:name=>"その他")

#ウェブサイト
web = Category.create(:name=>"ウェブサイト")

web_1 = web.children.create(:name=>"趣味・実用")
web_2 = web.children.create(:name=>"ビジネス・経済")
web_3 = web.children.create(:name=>"教育")
web_4 = web.children.create(:name=>"自己啓発")
web_5 = web.children.create(:name=>"その他")

