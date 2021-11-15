module ApplicationHelper

  def mark_active(resource)
    return 'active' if request.path.include?(resource)
  end
end
