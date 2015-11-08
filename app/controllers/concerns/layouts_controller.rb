class LayoutsController < ApplicationController

  def index
    send_file(/index.html)
  end

end
