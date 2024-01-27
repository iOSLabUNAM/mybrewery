# frozen_string_literal: true

class KegsController < ApplicationController
  def show
    @keg = Beer.find(params[:beer_id]).kegs.first
  end

  def update
    @keg = Beer.find(params[:beer_id]).kegs.first
    if @keg.update(keg_params)
      render :show, status: :ok, location: @keg
    else
      render json: @keg.errors, status: :unprocessable_entity
    end
  end

  private

  def keg_params
    params.require(:keg).permit(:consumed_ml)
  end
end
