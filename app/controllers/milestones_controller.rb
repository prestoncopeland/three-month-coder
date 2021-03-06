class MilestonesController < ApplicationController
before_action :require_login, except: [:index]

  def index
    @milestones = Milestone.all.order(date_worked: :desc)
    @total_hours = Milestone.all.map do |milestone| milestone.hours
    end.inject(:+)
  end

  def new
    @milestone = Milestone.new
  end

  def create
    @milestone = Milestone.new(milestone_params)
    @milestone.save
    flash.notice = "Milestone #{@milestone.date_worked} created!"
    redirect_to milestones_path
  end

  def edit
    @milestone = Milestone.find(params[:id])
  end

  def update
    @milestone = Milestone.find(params[:id])
    @milestone.update(milestone_params)
    flash.notice = "Milestone '#{@milestone.date_worked}' updated!"
    redirect_to milestones_path
  end

  def destroy
    @milestone = Milestone.find(params[:id])
    @milestone.destroy
    flash.notice = "Milestone '#{@milestone.date_worked}' deleted!"
    redirect_to milestones_path
  end

  private

  def milestone_params
    params.require(:milestone).permit(:date_worked, :time, :hours, :activity)
  end


end
