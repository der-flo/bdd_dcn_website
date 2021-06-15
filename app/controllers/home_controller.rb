class HomeController < ApplicationController
  def index
    @events = [:foo, :bar]
  end
end
