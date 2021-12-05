module ApplicationHelper
  def first_name(object)
    object.name.split[0]
  end
end
