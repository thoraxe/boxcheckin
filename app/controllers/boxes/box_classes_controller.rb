class Boxes::BoxClassesController < ApplicationController
  before_filter :authenticate_box!

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

end
