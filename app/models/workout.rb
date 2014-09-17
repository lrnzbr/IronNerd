class Workout < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :muscle_groups
	has_many :comments

	def owned_by?(owner)
    return false unless owner.is_a?(User)
    user == owner
end

end
