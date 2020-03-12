class Reports::SearchesController < ApplicationController
  #検索結果の一覧表示するアクション定義
  def index
    @reports = Report.search(params[:keyword])
  end
end
