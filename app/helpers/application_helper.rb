module ApplicationHelper
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to 'Login', new_user_session_path, class: style) + ' ' +
      (link_to 'Register', new_user_registration_path, class: style)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style
    end
  end
  
  def source_helper(layout)
    if session[:source]
      content_tag(:p, "Thanks for visiting from #{session[:source]}", class: 'source-greeting')
    end
  end
  
  def copyright
    content_tag(:div, "&copy; #{Time.now.year} | <b>Spencer Cornwall</b> All rights reserved.".html_safe, class: 'copyright')
  end
  
  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_path,
        title: 'About'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
      {
        url: news_path,
        title: 'news'
      }
    ]
  end
  
  def nav_helper style, tag_type
    nav_links = ''
    nav_items.each do |x|
      nav_links << "<#{tag_type}><a href='#{x[:url]}' class='#{style} #{active? x[:url]}'>#{x[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end
  
  def active? path
    'active' if current_page? path
    # Make this work with the whole, home page thing
  end
  
  def alert
    alert = (flash[:alert] || flash[:error] || flash[:notice])
    # Make the hit-box the right size
    if alert
      alertGen alert
    end
  end
  
  def alertGen msg
    js add_gritter(msg, title: 'Hey!', sticky: true, time: 2000)
  end
end
