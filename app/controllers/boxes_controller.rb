class BoxesController < ApplicationController
  before_filter :authenticate_box!

  def index
    @box_classes = current_box.box_classes
  end

end
