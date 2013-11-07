class InvitesController < ApplicationController

 before_action :set_event, only: [:show, :edit, :update, :destroy]


	def new
		@invites = Invite.where(:event_id => params[:event_id])
		@invite = Invite.new(:event_id => params[:event_id])
	end

	def create
    @invite = Invite.new(:name => params[:invite][:name],:event_id => params[:invite][:event_id])
    @invite.save
    redirect_to new_event_invite_path(@invite.event_id)
  end

	def show
		@invite = Invite.find(params[:id])
	end

	def edit
		@invite = Invite.find(params[:id])
  end

 	def update
 		@invite = Invite.find(params[:id])
 		@invite.rsvp = true
 		@invite.save
 		redirect_to event_path(@invite.event)
  end  

end
