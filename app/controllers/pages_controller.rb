class PagesController < ApplicationController
  def home
    @cars = Car.last(6)
  end
end
