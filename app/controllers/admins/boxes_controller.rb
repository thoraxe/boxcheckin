class Admins::BoxesController < ApplicationController
  before_filter :authenticate_admin!

  def index
    @boxes = Box.all
  end

  def new
    @box = Box.new
  end

  def create
    # generate a sufficiently strong random passsword
    o =  [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten;
    string  =  (0..10).map{ o[rand(o.length)]  }.join;

    @box = Box.new(params[:box])
    @box.password = string
    @box.password_confirmation = string

    if @box.save
      flash[:success] = "Box created successfully!"
      redirect_to admin_root_path
    else
      flash[:error] = "There was a problem with your submission."
      render :action => :new
    end
  end

  def edit
    @box = Box.find(params[:id])
  end

  def update
    @box = Box.find(params[:id])
    @box.update_attributes(params[:box])
    if @box.save
      flash[:success] = "Box updated successfully!"
      redirect_to admins_boxes_path
    else
      flash[:error] = "There was a problem with your submission."
      render :action => :edit
    end
  end

  def destroy
    @box = Box.find(params[:id])
    if @box.destroy
      flash[:success] = "Box deleted successfully!"
    else
      flash[:error] = "There was some kind of problem."
    end
    redirect_to admins_boxes_path
  end

end
