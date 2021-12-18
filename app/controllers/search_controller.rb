class SearchController < ApplicationController
  def index
    @param_s = params[:search]
    @professionals = Professional.joins(:skills).where('skills.name = ?', "#{@param_s}")
  end
end
