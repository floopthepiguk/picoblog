module UsersHelper
  def avatar_for(user)
    content_tag :span, nil,class: 'icon-user'
  end

  def author_link(authored_item)
    content_tag :span, 
      "by #{link_to authored_item.user_email, user_posts_path(authored_item.user)} on #{authored_item.created_at} #{avatar_for authored_item.user}".html_safe, 
      class: :author
  end
end
