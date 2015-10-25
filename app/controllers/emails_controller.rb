class EmailsController < ApplicationController

def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    if @email.save
      redirect_to emails_path(@email)
    else
      flash.alert = "Please fix the errors below to continue."
      render :new
    end
  end

  def index
    @emails = Email.all
  end

  def show
    @email = Email.find_by_id(params[:id])
  end

  protected

  def initialize_email
    if params[:id].present?
      @email = Email.find(params[:id])
    else
      @email = Email.new
    end
    if params[:email].present?
      @email.assign_attributes(email_params)
    end
  end

  def email_params
    params.require(:email).permit(:name, :address)
  end

end