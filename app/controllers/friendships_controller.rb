class FriendshipsController < ApplicationController
    
    
    def create
        friendship = Friendship.new(friend_params)
        #  inversefriendship = Friendship.new(user_id: inverse_friend_params_friend, friend_id: inverse_friend_params_user)

        if friendship.save # && inversefriendship.save
            render json: {msg: "added friends to each other"}
       
        end
    end


  def friend_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end

#   def inverse_friend_params_user
#     params.require(:friendship).permit(:user_id)
#   end  
#   def inverse_friend_params_friend
#     params.require(:friendship).permit(:friend_id)
#   end

end
