class GymsController < ApplicationController

   def show
      gym = Gym.find(params[:id])
      render json: gym
   end

   def index
      render json: Gym.all
   end

   def update
      gym = Gym.find(params[:id])
      gym.update(params.permit(:name, :address))
   end

   def destroy
      gym = Gym.find(params[:id])
      gym.destroy
      render json: {}, status: :no_content
   end

end
