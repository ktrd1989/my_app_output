class Report < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments

  #reportテーブルから検索するというメソッドのため、modelに記述
  def self.search(search)
    #引数で渡されるsearchの中身に何もなければ全ての投稿を取得できる
    return Report.all unless search
    Report.where('title LIKE(?)', "%#{search}%")
  end
end
