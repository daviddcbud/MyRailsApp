module ApplicationHelper
  
  #return the full page title
  def full_title(page_title)
    base_title="Member Tracker"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
