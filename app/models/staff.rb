class Staff < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 6 }
	validates :name, presence: true
	validates :email, presence: true
	validates :body, presence: true
end
