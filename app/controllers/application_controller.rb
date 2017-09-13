class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



def check_admin
	if authenticate_user!
  redirect_to(root_path) unless current_user.has_role? :admin
end

# def check_super_admin
# 	if authenticate_user!
#   redirect_to(root_path) unless current_user.has_role? :admin
# end

end
end
