module ApplicationHelper

  def nav_generator
    if admin_signed_in?
      render :partial => "shared/admin_navigation"
    elsif box_signed_in?
      render :partial => "shared/box_navigation"
    elsif member_signed_in?
      render :partial => "shared/member_navigation"
    else
      render :partial => "shared/login_navigation"
    end
  end

  def today_full_day
    Date.today.strftime("%A")
  end

  def class_time_printer(box_class)
    "#{box_class.start_time.strftime("%I:%M%p")}" + "#{box_class.start_time.strftime("%I:%M%p")}"
  end
end
