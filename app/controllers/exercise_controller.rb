class ExerciseController < ApplicationController
  def c2
  	@files = Dir.glob('*')
  end
end
