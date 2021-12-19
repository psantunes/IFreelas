class SearchController < ApplicationController
  def index
    @param_s = params[:search]
    @professionals = Professional.left_outer_joins(:experiences, :skills)
                                 .where('professionals.description like ?', "%#{@param_s}%").or(
                                   Professional.where('experiences.description like ?', "%#{@param_s}%")
                                 ).or(
                                   Professional.where('skills.name = ?', @param_s)
                                 ).uniq
  end
end
