module Users
  class SessionsController < Devise::SessionsController

    before_action :require_no_authentication, only: :create

    def new
      super
    end

    def create
      super
    end

    private


  end
end