class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :schedules
  has_many :staff
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
