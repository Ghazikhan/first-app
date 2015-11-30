class Degre < ActiveRecord::Base
	has_many :educations
	has_many :jobs
	
  def name_with_type
   "#{name} #{drege_type}"
  end
end
