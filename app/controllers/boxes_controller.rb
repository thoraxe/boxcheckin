class BoxesController < ApplicationController
  before_filter :authenticate_box!

  def index
    @monday = BoxClass.monday(current_box.id)
    @tuesday = BoxClass.tuesday(current_box.id)
    @wednesday = BoxClass.wednesday(current_box.id)
    @thursday = BoxClass.thursday(current_box.id)
    @friday = BoxClass.friday(current_box.id)
    @saturday = BoxClass.saturday(current_box.id)
    @sunday = BoxClass.sunday(current_box.id)
  end

end
