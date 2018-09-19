module BlogsHelper
  def gravatar_helper user
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5::hexdigest(user.email)}", width: 64, class: "card-img-left"
  end

  def blog_status_color(blog)
    'color: gray;' if blog.draft?
  end
end
