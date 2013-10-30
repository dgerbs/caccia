class MusiciansController < ApplicationController

  def index
    @musicians = Musician.all
  end

  def show
  end

  def new
    @musician = Musician.new
  end

  def edit
  end

  def create
    @musician = Musician.new(musician_params)
    # Add save and redirect
  end

  def update
    # Add update
  end

  def destroy
    @musician.destroy
    # Add destroy and redirect
  end

  protected

  def musician_params
    params[:musician]
    # Add white list params
  end
end
