module UsersHelper
  def avatar_for(user)
    content_tag :span, nil,class: 'icon-user'
  end

  def author_link(authored_item)
    content_tag :span, "#{link_to "#{avatar_for authored_item.user} #{authored_item.user_email}".html_safe, 
        user_posts_path(authored_item.user)} 
        #{content_tag :span, nil, class: 'icon-calendar'}
        #{authored_item.created_at} ".html_safe, 
        class: :author
  end
end
