class Api::DoctorController < ApplicationController

  def index
    @doctors = Doctor.joins(:department).select("doctors.*, departments.name as department_name").all
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
    return {
      first_name:  params[:first_name],
      last_name: params[:last_name],
      hospital_name: params[:hospital_name],
      email: params[:email],
      tel: params[:tel],
      fax: params[:fax],
      comment: params[:comment],
      english_speakable: 0,
      possibility: params[:possibility].to_i,
      has_ever_involved: params[:has_ever_involved],
      department_id: 1
    }
  end

end
