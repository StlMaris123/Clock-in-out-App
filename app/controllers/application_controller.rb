class ApplicationController < ActionController::Base
  before_action :authenticate_teacher!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :phone_number])
  end

  def after_sign_in_path_for(resource)
    new_clock_in_path
  end


  Warden::Manager.before_logout do |user,auth,opts|
    user.clock_ins.last.update(clock_type: 1)
  end    
end
