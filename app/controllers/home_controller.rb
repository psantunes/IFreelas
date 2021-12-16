class HomeController < ApplicationController
  def index
    redirect_to search_path({ search: params[:search] }) if params[:search].present?
  end
end
