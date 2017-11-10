class BoardController < ApplicationController
	before_action :check_admin
	before_action :authenticate_user!
  def index
  end

end
