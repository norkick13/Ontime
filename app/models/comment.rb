class Comment < ActiveRecord::Base
	belongs_to :staff
	belongs_to :user
end
