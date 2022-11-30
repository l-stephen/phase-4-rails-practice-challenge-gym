class GymsController < ApplicationController

    def index
        gym = Gym.all
        render json: gym
    end

    def show
        gym = Gym.find(params[:id])
        render json: gym
    end

    def destroy 
        gym = Gym.find_by!(id: params[:id])
        gym.destroy
        head :no_content
    end

    def update
        gym = Gym.find_by!(id: params[:id])
        gym.update!(gym_params)
        render json: gym, status: :accepted
    end

    private

    def gym_params
        params.permit(:name, :address)
    end

end
