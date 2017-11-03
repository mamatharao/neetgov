class CollaboratorResetMailer < ApplicationMailer
	default from: 'neetgov@gmail.com'
	def collaborator(user)
		@user =user
		mail(:to => @user.email, :subject => "Neetgov added you as Admin")
	end
end
