class InspectionReportsController < ApplicationController
  def index
  end

  def create
    @inspection_report = InspectionReport.new(permitted_params)
    if @inspection_report.save
      redirect_to inspection_reports_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def new
    @inspection_report = InspectionReport.new
  end

  private

  def permitted_params
    params.require(:inspection_report).permit(:title)
  end
end
