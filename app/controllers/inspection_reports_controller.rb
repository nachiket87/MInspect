class InspectionReportsController < ApplicationController
  before_action :authenticate_user!

  def index
    @inspection_reports = InspectionReport.order("created_at DESC")
  end

  def create
    @inspection_report = InspectionReport.new(permitted_params)
    @inspection_report.user = User.last
    if @inspection_report.save
      redirect_to inspection_reports_path, notice: "Success! there will be toast!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @inspection_report = InspectionReport.find(params[:id])
  end

  def new
    @inspection_report = InspectionReport.new
  end

  private

  def permitted_params
    params.require(:inspection_report).permit(:title, :description, :cover_image)
  end
end
