module FriendsHelper
  def is_friend?(user)
    if current_user.friends.any? {|friend| user.id == friend.id}
      return true
    else
      return false
    end
  end
end
