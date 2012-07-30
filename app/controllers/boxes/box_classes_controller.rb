class Boxes::BoxClassesController < ApplicationController
  before_filter :authenticate_box!

  def new
    @box_class = BoxClass.new
  end

end
