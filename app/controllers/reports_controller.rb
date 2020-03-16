class ReportsController < ApplicationController
  def index
    @report = Report.all.order(updated_at: :desc)
  end
  
  def new
    @report = Report.new
  end

  def show
    @report = Report.find(params[:id])
    @comment = Comment.new
    @comments = @report.comments.includes(:user)
  end

  def create
    Report.create(report_params) 
    redirect_to root_path
  end

  def update
    @report = Report.find(params[:id])
  end

  def search
  end

  private
    def  report_params
      params.require(:report).permit(:title, :review, :url,:category_id).merge(user_id: current_user.id)
    end
end
