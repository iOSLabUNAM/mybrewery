# frozen_string_literal: true

class KegsController < ApplicationController
  def show
    @keg = Keg.find(params[:id])
  end

  def update
    @keg = Keg.find(params[:id])
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
