module ApplicationHelper
  def login_helper(style = '', tag)
    if current_user.is_a?(GuestUser)
      "<#{tag}>#{link_to 'Login', new_user_session_path, class: style}</#{tag}>
      <#{tag}>#{link_to 'Register', new_user_registration_path, class: style}</#{tag}>".html_safe
    else
      "<#{tag}>#{link_to 'Logout', destroy_user_session_path, method: :delete, class: style}</#{tag}>".html_safe
    end
  end
  
  def source_helper(styles)
    if session[:source]
      content_tag(:div, ("Thanks for visiting from #{session[:source]}, please feel free to #{link_to 'contact me', contact_path } if you'd like to work together.").html_safe, class: styles)
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
        title: 'News'
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
    if alert
      alertGen alert
    end
  end
  
  def alertGen msg
    js add_gritter(msg, title: 'Hey!', sticky: false, time: 2000)
  end
  
  def social_links_helper(tag)
    "<#{tag}><a href='https://github.com/Ganakim'>#{"<i class='fa fa-github'>".html_safe}</i></a></#{tag}>
    <#{tag}><a href='https://www.facebook.com/spencer.cornwall'>#{"<i class='fa fa-facebook'>".html_safe}</i></a></#{tag}>
    <#{tag}><a href='https://www.instagram.com'>#{"<i class='fa fa-instagram'>".html_safe}</i></a></#{tag}>
    <#{tag}><a href='https://www.twitter.com'>#{"<i class='fa fa-twitter'>".html_safe}</i></a></#{tag}>
    <#{tag}><a href='https://www.tumblr.com'>#{"<i class='fa fa-tumblr-square'>".html_safe}</i></a></#{tag}>
    <#{tag}><a href='https://www.linkedin.com/in/spencer-cornwall-306647123'>#{"<i class='fa fa-linkedin-square'>".html_safe}</i></a></#{tag}>".html_safe
  end
end
