class PrayersController < ApplicationController
  # before_filter :initialize_prayer

  def new
    @prayer = Prayer.new
  end

  def create
    @prayer = Prayer.new(prayer_params)
    if @prayer.save
      redirect_to prayers_path(@prayer)
    else
      flash.alert = "Please fix the errors below to continue."
      render :new
    end
  end

  def index
    @prayers = Prayer.recent_posts
  end

  def show
    @prayer = Prayer.find_by_id(params[:id])
  end

  protected

  def initialize_prayer
    if params[:id].present?
      @prayer = Prayer.find(params[:id])
    else
      @prayer = Prayer.new
    end
    if params[:prayer].present?
      @prayer.assign_attributes(prayer_params)
    end
  end

  def prayer_params
    params.require(:prayer).permit(:title, :content, :postedby)
  end


end
