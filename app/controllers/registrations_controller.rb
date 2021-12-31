class RegistrationsController < Devise::RegistrationsController
  before_action :load_attributes, only: %i[edit update]

  def edit
    @professional.experiences.build if resource_class == Professional
  end

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
    return unless resource_class == Professional

    @work_shift = Professional.work_shifts
    @type_of_work = Professional.type_of_works
    @semester = Professional.semesters
    @course = Course.all
    @region = Region.all
  end
end
