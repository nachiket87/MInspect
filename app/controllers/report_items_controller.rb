class ReportItemsController < ApplicationController
  def show
    @report_item = ReportItem.find(params[:id])
  end

end
