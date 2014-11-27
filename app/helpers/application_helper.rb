module ApplicationHelper

  def render_errors_for(item)
    render partial: 'layouts/shared/form_errors', locals: { item: item }
  end
end
