class WelcomeController < ApplicationController
  def index
    if student_signed_in?
      @assignment = Assignment.new
      render "student_index"
    elsif teacher_signed_in?
      render "teacher_index"
    else
      render "index"
    end
  end
end
