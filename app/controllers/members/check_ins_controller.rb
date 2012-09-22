class Members::CheckInsController < ApplicationController
  before_filter :authenticate_member!

  def new
    # find our box
    @box = Member.first.box

    # find the remaining classes for today
    @classes = BoxClass.where(["box_id = :box_id AND day = :day AND start_time > :time", 
                              { :box_id => @box.id, :day => Date.today.cwday, :time => Time.now.strftime("%I%M%S") } ])
  end

end
