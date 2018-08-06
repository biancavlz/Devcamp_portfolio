module ApplicationHelper
  def login_helper style
    if current_user.is_a?(GuestUser)
      (link_to 'register', new_user_registration_path, class: style) + ' '.html_safe + 
        (link_to 'Login', new_user_session_path, class: style) 
    else
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(layout_name)
    if session[:source] 
      source_greeting = "Thanks for visiting me from #{session[:source]}, you are on #{layout_name} page"
      content_tag(:p, source_greeting, class: 'source-greeting')
    end
  end

  def copyright_generator
    CopyrightRendererTool::Renderer.copyright "Bianca Velázquez", "All rights reserved"
  end
end
