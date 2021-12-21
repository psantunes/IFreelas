class FreelancersController < ApplicationController
  def show
    @professional = Professional.find(params[:id])
  end
end
