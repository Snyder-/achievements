#
class AchievementsController < ApplicationController
  def new
    @achievement = Achievement.new
  end

  def create
    @achievement = Achievement.new(achievement_params)

    if @achievement.save
      redirect_to root_url, notice: "Achievement has been created"
    else
      render :new
    end
  end

  def show
    @achievement = Achievement.find(params[:id])
  end

  def destroy
    @achievement = Achievement.find(params[:id])
    @achievement.delete
    flash.notice = 'Achievement has been deleted'
    redirect_to root_url
  end

  private

  def achievement_params
    params.require(:achievement).permit(:title, :description, :privacy, :featured, :cover_image)
  end
end
