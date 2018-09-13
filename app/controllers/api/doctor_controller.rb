class Api::DoctorController < ApplicationController

  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  def show
  end

  def create
  end

end
