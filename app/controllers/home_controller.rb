class HomeController < ApplicationController
  def index
    @blurbs = Blurb.all
  end

end
