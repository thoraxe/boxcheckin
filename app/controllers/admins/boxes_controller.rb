class Admins::BoxesController < ApplicationController
  before_filter :authenticate_admin!

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

    if @box.save!
      flash[:success] = "Box created successfully!"
      redirect_to admin_root_path
    else
      flash[:error] = "There was a problem with your submission."
      render :action => :new
    end
  end

end
