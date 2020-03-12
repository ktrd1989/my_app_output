class ReportsController < ApplicationController
  def new
    @report = Report.new
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
