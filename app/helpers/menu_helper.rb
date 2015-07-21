module MenuHelper
  def menu_item(name, url)
    content_tag :li, link_to(name, url), class: menu_active_class(url)
  end

  def menu_active_class(url)
    'active' if current_page?(url)
  end
end
