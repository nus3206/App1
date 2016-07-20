class Simplefrom < ActiveRecord::Base
	enum remember_me: { false: 0, true: 1 }
	belongs_to :role
end
