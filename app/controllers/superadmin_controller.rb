class SuperadminController < ApplicationController
	before_action :check_admin
	before_action :check_super_admin
  def index
  end

  def create_admin
  	@user = User.new
  	@users = User.with_role :admin
  end

  def addsuperadmin
  	user =User.where(:email => superadmin_params[:email]).last
  	if user.blank?
  		@user = User.new(superadmin_params)
		@user.fname = superadmin_params[:fname]
		@user.lname = superadmin_params[:lname]
		puts superadmin_params[:lname]
		@user.district = "Prakasam"
		@user.state = "Andhra Pradesh"
		@user.mobile = 8019466433
		@user.password = SecureRandom.uuid[0..7]
		@user.password_confirmation = @user.password
		@user.add_role :admin
		@user.reset_password_token = SecureRandom.hex(32)
		@user.reset_password_sent_at = Time.now
		@user.skip_confirmation!

		if @user.valid?
			@user.save
			CollaboratorResetMailer.collaborator(@user).deliver
			redirect_to "/superadmin/create_admin", :notice => "Admin added"
		else
			k=""
			if @user.errors.any?
				@user.errors.full_messages.each do |message|
					k << message
				end
			end
			puts k
			redirect_to "/superadmin/create_admin", :alert => "something went wrong"
		end
	else
		redirect_to "/superadmin/create_admin", :alert => "User Already added, please login."
	end
  end

  def delete
  	user = User.find(params[:id])
  	user.destroy
  	redirect_to "/superadmin/create_admin", :alert => "Deleted Successfuly"
  end

  private
  	def superadmin_params
  		params.require(:user).permit(:fname, :lname, :email)
  	end
end
