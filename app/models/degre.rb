class Degre < ActiveRecord::Base
	has_many :educations
	
  def name_with_type
   "#{name} #{drege_type}"
  end
end
