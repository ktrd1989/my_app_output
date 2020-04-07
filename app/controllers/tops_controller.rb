class TopsController < ApplicationController
  def index
    @report = Report.all.order(updated_at: :desc)
  end
end
