class City < ActiveRecord::Base
	has_many :institutes
	has_many :jobs
end
