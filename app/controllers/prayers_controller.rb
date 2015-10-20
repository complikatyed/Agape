class RequestsController < ApplicationController
  before_filter :initialize_request

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to request_path(@request),
    else
      flash.alert = "Please fix the errors below to continue."
      render :new
    end
  end

  def index
    @requests = Requests.find(:all, :limit => 10, :order => 'date_posted')
  end

  protected

  def initialize_request
    if params[:id].present?
      @request = Request.find(params[:id])
    else
      @request = Request.new
    end
    if params[:request].present?
      @request.assign_attributes(request_params)
    end
  end

  def request_params
    params.require(:request).permit(:prayfor, :content, :postedby)
  end


end
