class CommentsController < ApplicationController
  def create
    #ストロングパラメーターを使って、インスタンス変数に代入
    @comment = Comment.new(comment_params)
    #itemテーブルからitem_idを見つけ、インスタンス変数にいれる
    @report = Report.find(params[:report_id])
    #コメントが保存できたら
    if @comment.save
      #item詳細に飛ぶ
      redirect_to report_path(@report)
    else
      #保存失敗したらフラッシュメッセージ表示
      flash[:notice] = "コメント欄が空白です。"
      redirect_to report_path(@report)
    end
  end

  private
  #reviewカラムには渡されたparamsの中にcommentというハッシュがある二重構造になっているので、requireメソッドで指定してtextを取り出す。
  #user_idカラムには、ログインしているユーザーのidとなるcurrent_user.idを保存し、item_idカラムは、paramsで渡されるようにするので、params[:item_id]として保存する
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, report_id: params[:report_id])
  end
end
