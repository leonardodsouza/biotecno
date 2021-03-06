class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  
  def footer
    Pagina.find(8)
  end
  helper_method :footer 

  private
    def set_locale
      I18n.locale = params[:locale] if params[:locale].present?
    end
    def default_url_options(options = {})
      {locale: I18n.locale}
    end
end
