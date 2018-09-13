class Api::DoctorController < ApplicationController

  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  def show
    doctor = Doctor.find_by(id: params[:id])
    if doctor
      render json: doctor
    else
      head 404
    end
  end

  def create
    doctor = Doctor.new(doctor_params)
    if doctor.save
      head 200
    else
      render json: doctor.errors.messages, status: 400
    end
  end

  def update
    doctor = Doctor.find_by(id: params[:id])
    head 404 and return unless doctor

    if doctor.update(doctor_params)
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
