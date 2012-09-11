class Boxes::MembersController < ApplicationController
  before_filter :authenticate_box!

  def index
    @members = current_box.members
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])

    # we'll give them a random password for now, they'll reset it later
    password = (0...10).map{65.+(rand(25)).chr}.join

    @member.password = password
    @member.password_confirmation = password

    if current_box.members << @member
      flash[:success] = "Member added successfully."
      redirect_to box_root_path
    else
      flash[:error] = "Couldn't add member."
      render :action => :new
    end
  end

end
