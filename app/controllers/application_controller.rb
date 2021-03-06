class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  private

  def authenticate_admin
    unless current_user.admin?
      flash[:alart] = "Not allow!"
      redirect_to root_path
    end
  end
end
