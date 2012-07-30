module BoxesHelper
  def delete_class_link(box_class)
    link_to "Delete Class", boxes_box_class_path(box_class.id), {:method => :delete, :class => "btn btn-mini btn-danger", 
      :confirm => "Really delete this class (#{BoxClass::DAYS[box_class.day][0]} #{box_class.start_time.strftime("%I:%M%p")})?"}
  end
end
