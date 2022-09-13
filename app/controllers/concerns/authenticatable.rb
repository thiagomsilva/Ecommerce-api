module Authenticatable
  extend ActiveSupport.concern

  included do
    include DeviseTokenAuth::Concerns::SetUserByToken
    before_action :authenticate_user!
  end
end
