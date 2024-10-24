class Doctor < ApplicationRecord
  has_many :doctor_specialties
  has_many :specialties, through: :doctor_specialties
  belongs_to :city
  has_many :appointments
  has_many :patients, through: :appointments
end
