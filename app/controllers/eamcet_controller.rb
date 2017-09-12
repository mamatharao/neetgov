class EamcetController < ApplicationController
  require 'carrierwave/orm/activerecord'
  before_action :authenticate_user!
  def index
  	
  end

  def addeamcet
  	@eamcet = Eamcet.new
  	if params[:count]
  		tc = Eamcet.where(:test_count => params[:count]).last
  		if tc.blank?
  			tc = 0
  		else
  			tc = tc.test_count
  		end
  	else
  		tc=0
  	end
  	@mc = Eamcet.where(:subject => "Mathematics", :test_count => tc)
  	@pc = Eamcet.where(:subject => "Physics", :test_count => tc)
    @cc = Eamcet.where(:subject => "Chemistry", :test_count => tc)
  end

  # def physics
  # 	@ecet = Eamcet.new
  # 	if params[:count]
  # 		tc = Eamcet.where(:test_count => params[:count]).last
  # 		if tc.blank?
  # 			tc = 0
  # 		else
  # 			tc = tc.test_count
  # 		end
  # 	else
  # 		tc=0
  # 	end
  # 	@mc = Eamcet.where(:subject => "Mathematics", :test_count => tc)
  # 	@pc = Eamcet.where(:subject => "Physics", :test_count => tc)
  #   @cc = Eamcet.where(:subject => "Chemistry", :test_count => tc)
  # end

  # def chemistry
  #   @ecet = Eamcet.new
  #   if params[:count]
  #     tc = Eamcet.where(:test_count => params[:count]).last
  #     if tc.blank?
  #       tc = 0
  #     else
  #       tc = tc.test_count
  #     end
  #   else
  #     tc=0
  #   end
  #   @mc = Eamcet.where(:subject => "Mathematics", :test_count => tc)
  #   @pc = Eamcet.where(:subject => "Physics", :test_count => tc)
  #   @cc = Eamcet.where(:subject => "Chemistry", :test_count => tc)
  # end

  def addemacet_que
  	@eamcet = Eamcet.new(eamcet_params)
  	@test_count = eamcet_params['test_count']
        if @eamcet.valid?
            @eamcet.save
            redirect_to "/addeamcet/#{eamcet_params['subject']}/#{eamcet_params['test_count']}",  notice: 'Eamcet Question was successfully added'
        else
            redirect_to "/addeamcet/#{eamcet_params['subject']}/#{eamcet_params['test_count']}", alert: "Something Wrong Please Check Input Feilds, Image allow only 'jpg jpeg gif png' "
        end
  end


  private

   def eamcet_params
      	params.require(:eamcet).permit(:subject,:short_subject,:question,:a,:b,:c,:d,:answer,:test_count, :type, :image_question,:imagea,:imageb,:imagec,:imaged)
    end
end
