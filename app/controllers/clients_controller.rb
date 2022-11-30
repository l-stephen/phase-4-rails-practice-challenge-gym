class ClientsController < ApplicationController

    
    def index
        client = Client.all
        render json: client
    end

    def show
        client = Client.find(params[:id])
        render json: client, methods: [:total_memberships]
    end

    def update
        gym = Client.find_by!(id: params[:id])
        gym.update!(client_params)
        render json: gym, status: :accepted
    end

    private

    def client_params
        params.permit(:name, :age)
    end
end
