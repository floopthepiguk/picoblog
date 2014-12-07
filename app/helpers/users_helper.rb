module UsersHelper

  #
  # avatar_for
  #
  def avatar_for(user)
    content_tag :span, nil,class: 'icon-user'
  end

  #
  # author_link
  #
  def author_link(authored_item)
    content_tag :span, "#{link_to "#{avatar_for authored_item.user} #{authored_item.user_email}".html_safe, 
        user_posts_path(authored_item.user)} 
        #{content_tag :span, nil, class: 'icon-calendar'}
        #{authored_item.created_at} ".html_safe, 
        class: :author
  end


  #
  # follow_button
  #
  def follow_button(user)
    if(current_user.following? user)
      link_to "Unfollow", unfollow_user_path(user), class: :button, method: :put
    else
      link_to "Follow", follow_user_path(user), class: :button, method: :put
    end
  end

end
