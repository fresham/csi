class FacultyController < ApplicationController
  def index
    @professors = Professor.all
    @title = "Faculty"
  end

end
