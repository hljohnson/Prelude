class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  respond_to :html

  before_filter :ensure_valid_band, only: :index

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?

  def ensure_valid_band
    if current_user && !(current_user.band.valid?)
    #if current_user && current_user.band_id == -1
      redirect_to (edit_band_path(current_user.band.id))
      return
    end
  end

  def after_sign_in_path_for(resource)
    root_path
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :username
    end


end
