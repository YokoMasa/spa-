class Api::DoctorController < ApplicationController

  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  def show
  end

  def create
    doctor = Doctor.new(doctor_params)
    if doctor.save
      head 200
    else
      render json: doctor.errors.messages, status: 400
    end
  end

  def destroy
    doctor = Doctor.find_by(id: params[:id])
    doctor.destroy if doctor
    head 200
  end

  private
  def doctor_params
    params.permit(
      :first_name,
      :last_name,
      :hospital_name,
      :email,
      :tel,
      :fax,
      :comment,
      :english_speakable,
      :possibility,
      :has_ever_involved,
      :department_id
    )
  end

end
