class WelcomeController < ApplicationController
  def index
    @achievements = Achievement.all
  end
end
