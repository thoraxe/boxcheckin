module ApplicationHelper

  def nav_generator
    if admin_signed_in?
      render :partial => "shared/admin_navigation"
    end
  end

end
