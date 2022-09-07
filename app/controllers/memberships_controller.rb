class MembershipsController < ApplicationController

   def create 
      membership = Membership.create(params[:gym_id, :client_id, :charge])
      render json: membership, status: :created
   end
end
