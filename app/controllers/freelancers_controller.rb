class FreelancersController < ApplicationController
  def show
    console
    @professional = Professional.find(params[:id])
  end
end
