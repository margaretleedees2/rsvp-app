module InvitesHelper

	def attendee_list(invite)
		if invite.rsvp 
			"I'm Attending!"
		else
			link_to 'RSVP', edit_invites_path(invite)
		end
	end

end
