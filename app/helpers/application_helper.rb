module ApplicationHelper
  def full_title(page_title)
    base_title = "CA Dashboard"
    if page_title.empty?
      base_title
    else 
      "#{base_title} | #{page_title}"
    end
  end
  
  def blog_icon
    image_tag('blog.png', border: 0)
  end
  
  def backpack_icon
    image_tag('backpack.png', border: 0)
  end
  
  def github_icon
    image_tag('github.png', border: 0)
  end
  
  def google_icon
    image_tag('google.png', border: 0)
  end
  
  def codemtn_icon
    image_tag('codemountain.png', border: 0)
  end
  
  def shay_icon
    image_tag('shay.png', border: 0)
  end
end
