# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def blue_print_framework
    stylesheet_link_tag("screen", :media => :screen) +
            stylesheet_link_tag("print", :media => :print) +
            "<!--[if lt IE 8]>" + stylesheet_link_tag("ie", :media => :screen) + "<![endif]-->"
  end

end
