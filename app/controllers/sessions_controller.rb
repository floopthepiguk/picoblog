class SessionsController < Devise::SessionsController
  layout :layout

  private
  def layout
    request.xhr? ? false : nil
  end
end
