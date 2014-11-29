module IconsHelper

  #
  # render_icon
  #
  # Renders an icon
  # 
  def render_icon(icon, options = {})
    options.merge! class: [:icon, "icon-#{icon.name}"]
    content_tag :span, nil, options
  end

  def icon_field(form_builder, selected_icon = 1)
    render partial: 'icons/icon_fields', 
      locals: { f: form_builder, selected_icon: selected_icon } 
  end

end
