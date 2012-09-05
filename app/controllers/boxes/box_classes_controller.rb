class Boxes::BoxClassesController < ApplicationController
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

  def new
    @box_class = BoxClass.new
  end

  def create
    @box_class = BoxClass.new(params[:box_class])

    if current_box.box_classes << @box_class
      flash[:success] = "Class added successfully."
      redirect_to box_root_path
    else
      flash[:error] = "There was a problem with your submission."
      render :action => :new
    end
  end

  def destroy
    @box_class = BoxClass.find(params[:id])
    if @box_class.box_id == current_box.id
      if @box_class.destroy
        flash[:success] = "Class deleted successfully."
      else
        flash[:error] = "There was a problem deleting."
      end
    else
      flash[:error] = "There was a problem deleting."
    end
    redirect_to box_root_path
  end

end
