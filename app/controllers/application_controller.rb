class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate, :except => [:index, :show]

  private

  def authenticate
    authenticate_or_request_with_http_basic do |login, password|
      if user = User.find_by_login(login)
        # Then compare the provided password against the hashed one in the db.
        if user.password == password
          return user
        end
      end

      return nil
    end
  end
end
