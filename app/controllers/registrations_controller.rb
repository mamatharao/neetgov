class RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token
  require 'securerandom'

  def index
    @users = User.all
  end

  def show
    @user = current_user
  end


  def create
    @user = User.new(sign_up_params)
    @user.key = SecureRandom.hex(5)
    
    if @user.valid?
      @user.add_role :admin
      @user.key = SecureRandom.hex(5)
      @user.save
      flash[:notice] = "Success"
      redirect_to login_url, :notice => "emailnotification"
      # redirect_to emailnotification_url(@user), status: :found
      # redirect_to :controller => 'emailnotification'
    else
      flash[:notice] = "Error"
      render :new
    end
  end


 def destroy
    Devise::Mailer#reset_password_instructions
    # CancelAccount.cancel_account(@user.email, @user.id).deliver
    @user=current_user
    @user.delete
    flash[:notice] = "Bye! Your account has been successfully cancelled. We hope to see you again soon."
    redirect_to "/"
  end
 
  private

  def sign_up_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation, :state,:district, :mobile)
  end

end