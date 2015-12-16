class Item < ActiveRecord::Base
  belongs_to :user

  def from_time
	  created_at
	end

	def to_time
	  7-(from_time)
	end

end
