class RegistrationsController < Devise::RegistrationsController
  before_action :load_attributes, only: [:edit]

  protected

  def update_resource(resource, params)
    if params[:password].blank?
      resource.update_without_password(params)
    else
      resource.update(params)
    end
  end

  private

  def load_attributes
    @work_shift = Professional.work_shifts
    @type_of_work = Professional.type_of_works
    @semester = Professional.semesters
  end
end
