class MsdnFaqController < ApplicationController
  def index
    @title = "MSDN Frequently Asked Questions"
    @questions = Question.all
  end

end
