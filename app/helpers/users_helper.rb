module UsersHelper
  def avatar_for(user)
    gravatar_image_tag(user.email, class: :th) 
  end
end
