class ClientsController < ApplicationController

   def show
      client = Client.find(params[:id])
      render json: client, include: :memberships
   end

   def index
      render json: Client.all
   end

   def update
      client = Client.find(params[:id])
      client.update(params.permit(:name, :age))
   end

end
