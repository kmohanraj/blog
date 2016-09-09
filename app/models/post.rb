class Post < ActiveRecord::Base
	 # attr_accessible :title, :date, :desc
validates :title , presence: true

end
