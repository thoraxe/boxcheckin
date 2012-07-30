class BoxesController < ApplicationController
  before_filter :authenticate_box!

  def index
  end

end
