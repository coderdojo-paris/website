class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :signed_in?
  before_action :set_locale

  private

  def authorize
    redirect_to sign_in_url, error: "Not authorized" if current_user.nil?
  end

  def current_user
    @current_user ||= session[:user] if session[:user]
  end

  def signed_in?
    current_user != nil
  end

  def extract_locale_from_accept_language_header
    http_accept_language = request.env['HTTP_ACCEPT_LANGUAGE']
    return 'fr' if http_accept_language.blank? # for google bot which does not set HTTP_ACCEPT_LANGUAGE

    http_accept_language = http_accept_language.scan(/^[a-z]{2}/).first
    if ['fr', 'en'].include? http_accept_language
      http_accept_language
    else
      'en'
    end
  end

  def set_locale
    I18n.locale = session[:locale] || extract_locale_from_accept_language_header || I18n.default_locale
    session[:locale] = I18n.locale
  end
end
