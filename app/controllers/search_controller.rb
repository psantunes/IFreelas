class SearchController < ApplicationController
  def index
    @param_s =  params[:search]
    @professionals = Professional.all 
  end
end
