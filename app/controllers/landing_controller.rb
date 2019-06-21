class LandingController < ApplicationController
  def index
    @message = Message.new
  end
end
