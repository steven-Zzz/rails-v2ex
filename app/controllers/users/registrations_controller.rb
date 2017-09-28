module Users
  class RegistrationsController < Devise::RegistrationsController
    # 需要验证有没有登录的action。
    before_action :require_no_authentication, only: :create

    def new
      super
    end

    def create
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
      super
    end


    protected

  end
end