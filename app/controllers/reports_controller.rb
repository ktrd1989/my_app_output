class ReportsController < ApplicationController
  def index
    @report = Report.all.order(updated_at: :desc)
  end
  
  def new
    @report = Report.new
  end

  def show
  end

  def create
    Report.create(report_params) 
    redirect_to root_path
  end

  private
    def  report_params
      params.require(:report).permit(:title, :review, :url,:category_id).merge(user_id: current_user.id)
    end
end
