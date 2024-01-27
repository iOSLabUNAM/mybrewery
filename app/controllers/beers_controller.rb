# frozen_string_literal: true

class BeersController < ApplicationController
  before_action :set_beer, only: %i[show update destroy]

  def index
    @beers = Beer.includes(:kegs).all
  end

  def show; end

  def create
    @beer = Beer.new(beer_params)

    if @beer.save
      render :show, status: :created, location: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  def update
    if @beer.update(beer_params)
      render :show, status: :ok, location: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @beer.destroy!
  end

  private

  def set_beer
    @beer = Beer.find(params[:id])
  end

  def beer_params
    params.require(:beer).permit(:name, :type, :abu, :ibu)
  end
end
