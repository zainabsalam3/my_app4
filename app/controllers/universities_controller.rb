class UniversitiesController < ApplicationController
  def index
  @universities = University.all
  end
end
