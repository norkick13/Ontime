class Schedule < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	
	belongs_to :admin
	belongs_to :user
	validates :title, presence: true, length: { minimum: 6}
	validates :body, presence: true
	validates :admin_code, presence: true, length: { minimum: 4 }
	validates_numericality_of :admin_code, :on => :create
	validates_presence_of :admin_name, :admin_email
	

end
