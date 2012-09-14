class Boxes::MembersController < ApplicationController
  before_filter :authenticate_box!

  def index
    @members = Member.paginate(:conditions => {:box_id => current_box.id}, :page => params[:page], :per_page => 6)
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

  def destroy
    # find the member
    @member = Member.find(params[:id])

    # check if the member belongs to the current administrator
    if @member.box_id == current_box.id
      # destroy
      if @member.destroy
        flash[:success] = "Member deleted successfully."
      else
        flash[:error] = "Couldn't delete."
      end
      redirect_to boxes_members_path
    else
      # not their member to delete. redirect silently
      redirect_to box_root_path
    end
  end

end
