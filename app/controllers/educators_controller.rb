class EducatorsController < ApplicationController
  def index
  @educators = Educator.all
  @universities = University.all
  @books = Book.all
  end
end
