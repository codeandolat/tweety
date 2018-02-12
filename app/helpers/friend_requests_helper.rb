module FriendRequestsHelper
  def incoming_friend_requests?
    if FriendRequest.where(friend: current_user).any? {|friend_request| current_user.id == friend_request.friend_id}
      return true
    else
      return false
    end
  end

  def outgoing_friend_requests?(user)
    if !current_user.friend_requests.nil? and current_user.friend_requests.any? {|friend_request| user.id == friend_request.friend_id}
      return true
    else
      return false
    end
  end
end
