class ReportItemsController < ApplicationController
  def show
    @report_item = ReportItem.find(params[:id])
  end

  def new
    @inspection_report = InspectionReport.find(params[:inspection_report_id])
    @report_item = @inspection_report.report_items.new
  end

  def create
    @inspection_report = InspectionReport.find(params[:inspection_report_id])
    updated_params = permitted_params
    updated_params[:severity] = updated_params[:severity].to_i
    updated_params[:inspection_coverage] = updated_params[:inspection_coverage].to_i
    @report_item = @inspection_report.report_items.new(updated_params)

    if @report_item.save
      redirect_to inspection_report_path(@inspection_report)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def permitted_params
    params.require(:report_item).permit(:title, :remarks, :severity, :inspection_coverage, :notes)
  end

end
