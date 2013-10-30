class EngagementsController < ApplicationController

  def index
    @engagements = Engagement.all
  end

  def show
  end

  def new
    @engagement = Engagement.new
  end

  def edit
  end

  def create
    @engagement = Engagement.new(engagement_params)
    # Add save and redirect
  end

  def update
    # Add update
  end

  def destroy
    @engagement.destroy
    # Add destroy and redirect
  end

  protected

  def engagement_params
    params.require[:engagement].permit[:status, :application, :bid]
  end
end
