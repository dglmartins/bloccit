module UsersHelper
  def posts_present
    if current_user.posts.count == 0
      false
    else
      true
    end
  end

  def comments_present
    if current_user.comments.count == 0
      false
    else
      true
    end
  end
end
