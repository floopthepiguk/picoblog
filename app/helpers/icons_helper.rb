module IconsHelper

  #
  # render_icon
  #
  # Renders an icon
  # 
  def render_icon(icon, options = {})
    options.merge! class: [:icon, "icon-#{icon.name}"], data: { icon_id: icon.id }
    content_tag :span, nil, options
  end

  def icon_field(form_builder, selected_icon = 1)
    render partial: 'icons/icon_field', locals: { f: form_builder, selected_icon: selected_icon } 
  end

  def icon_color_field(form_builder, selected_color = 1)
    render partial: 'icons/color_field', locals: { f: form_builder, selected_color: selected_color } 
  end

end
