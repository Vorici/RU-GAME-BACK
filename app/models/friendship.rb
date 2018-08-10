class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, :class_name => 'User'

#   after_create :create_inverse_relationship
#   after_destroy :destroy_inverse_relationship

#   def create_inverse_relationship
#     friend.friendships.new(friend: user)
#   end

#   def destroy_inverse_relationship
#     relationship = friend.relationships.find_by(friend: user)
#     relationship.destroy if relationship
#   end

  
end
