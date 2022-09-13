module Admin::V1
  class HomeController < ApiController
    def index
      render json: { message: 'Olá mundo!' }
    end
  end
end
