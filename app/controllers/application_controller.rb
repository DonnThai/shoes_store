class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout "user_application"
  before_action :set_categories, :set_companies, :authenticate_user!

  def set_categories
    @categories = Category.all
  end

  def set_companies
  	@companies = Company.all
  end
end
