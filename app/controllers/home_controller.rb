class HomeController < ApplicationController
  def index
    @books = Book.order('RANDOM()').limit(4)
  end
end
