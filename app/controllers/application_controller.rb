class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  
  def quem_somos
    @quem_somos = Banner.find(8)
  end
  helper_method :quem_somos 

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
