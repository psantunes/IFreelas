class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    permitted = [
      :avatar,
      :birth_date,
      :company,
      :course_id,
      :description,
      :email,
      :github,
      :linkedin,
      :mobile,
      :name,
      :semester,
      :password,
      :password_confirmation,
      :phone,
      :skills,
      :type_of_work,
      :website,
      :whatsapp,
      :work_shift,
      { language_ids: [] },
      { region_ids: [] },
      { skill_ids: [] },
      experiences_attributes: [:id, :title, :description, :_destroy]
    ]
    devise_parameter_sanitizer.permit(:sign_up, keys: permitted)
    devise_parameter_sanitizer.permit(:account_update, keys: permitted)
  end
end
