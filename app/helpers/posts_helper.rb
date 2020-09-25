module PostsHelper

  def postul(post)
    post.body 
  end
  def post_authot(post)
  "by " + post.user.name if user_signed_in?
  end
 
  def create_new_post
    link_to  "Create new post", new_post_path if user_signed_in?
  end

end
