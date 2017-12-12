class EamcetController < ApplicationController
  require 'carrierwave/orm/activerecord'
  before_action :authenticate_user!
  before_action :check_admin
  def index
  	@total =Eamcet.select(:testcount).map(&:testcount).uniq
  end

  def addeamcet
  	@eamcet = Eamcet.new
  	if params[:count]
  		tc = Eamcet.where(:testcount => params[:count]).last
  		if tc.blank?
  			tc = 0
  		else
  			tc = tc.testcount
  		end
  	else
  		tc=0
  	end
  	@mc = Eamcet.where(:subject => "Mathematics", :testcount => tc)
  	@pc = Eamcet.where(:subject => "Physics", :testcount => tc)
    @cc = Eamcet.where(:subject => "Chemistry", :testcount => tc)
  end

  def test_count_question
    @total = Eamcet.where(:testcount => params[:testcount]).order("subject = 'mathematics' desc").order("subject = 'physics' desc").order("subject = 'chemistry' desc")
  end

  def destroy
    Eamcet.find(params[:id]).destroy
    flash[:success] = "Eamcet test-#{params[:testcount]} question #{params[:id]} successfully"
    redirect_to "/admineamcet/test_questions/#{params[:testcount]}"
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
  	@testcount = eamcet_params['testcount']
        if @eamcet.valid?
            @eamcet.save
            redirect_to "/addeamcet/#{eamcet_params['subject']}/#{eamcet_params['testcount']}",  notice: 'Eamcet Question was successfully added'
        else
            redirect_to "/addeamcet/#{eamcet_params['subject']}/#{eamcet_params['testcount']}", alert: "Something Wrong Please Check Input Feilds, Image allow only 'jpg jpeg gif png' "
        end
  end


  private

   def eamcet_params
      	params.require(:eamcet).permit(:subject,:short_subject,:question,:a,:b,:c,:d,:answer,:testcount, :type, :questionimage,:imagea,:imageb,:imagec,:imaged)
    end
end
