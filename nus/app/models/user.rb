class User < ActiveRecord::Base
 belongs_to :role

 validates :name, length: { minimum: 3 , message:"Error"}

 enum male: { man: 0, woman: 1 }

end
