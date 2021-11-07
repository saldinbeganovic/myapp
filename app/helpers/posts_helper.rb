module PostsHelper
  def display_post_links(post)
    capture do
    concat "<td>#{link_to 'Show', post }</td>".html_safe
    concat "<td>#{link_to 'Edit', edit_post_path(post) if current_user==post.user}  </td>".html_safe
    concat "<td> #{link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' } if current_user==post.user} </td>".html_safe
  end
  end
def display_post_show_links(post)
  capture do
  if current_user==post.user
     concat link_to 'Edit', edit_post_path(@post)
    concat ' | '
  end
  concat link_to 'Back', posts_path
end
end
end
