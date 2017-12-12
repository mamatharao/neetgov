class EcetController < ApplicationController
	require 'carrierwave/orm/activerecord'
  before_action :authenticate_user!
  before_action :check_admin
  def index
  	@total =Ecet.select(:testcount).map(&:testcount).uniq
  end

  def mathematics
  	@ecet = Ecet.new
  	if params[:count]
  		tc = Ecet.where(:testcount => params[:count]).last
  		if tc.blank?
  			tc = 0
  		else
  			tc = tc.testcount
  		end
  	else
  		tc=0
  	end
  	@mc = Ecet.where(:subject => "Mathematics", :testcount => tc)
  	@pc = Ecet.where(:subject => "Physics", :testcount => tc)
    @cc = Ecet.where(:subject => "Chemistry", :testcount => tc)
    @civc = Ecet.where(:subject => "Civil", :testcount => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :testcount => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :testcount => tc)
    @csc = Ecet.where(:subject => "Computer Science", :testcount => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :testcount => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def physics
  	@ecet = Ecet.new
  	if params[:count]
  		tc = Ecet.where(:testcount => params[:count]).last
  		if tc.blank?
  			tc = 0
  		else
  			tc = tc.testcount
  		end
  	else
  		tc=0
  	end
  	@mc = Ecet.where(:subject => "Mathematics", :testcount => tc)
  	@pc = Ecet.where(:subject => "Physics", :testcount => tc)
    @cc = Ecet.where(:subject => "Chemistry", :testcount => tc)
    @civc = Ecet.where(:subject => "Civil", :testcount => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :testcount => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :testcount => tc)
    @csc = Ecet.where(:subject => "Computer Science", :testcount => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :testcount => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def chemistry
    @ecet = Ecet.new
    if params[:count]
      tc = Ecet.where(:testcount => params[:count]).last
      if tc.blank?
        tc = 0
      else
        tc = tc.testcount
      end
    else
      tc=0
    end
    @mc = Ecet.where(:subject => "Mathematics", :testcount => tc)
    @pc = Ecet.where(:subject => "Physics", :testcount => tc)
    @cc = Ecet.where(:subject => "Chemistry", :testcount => tc)
    @civc = Ecet.where(:subject => "Civil", :testcount => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :testcount => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :testcount => tc)
    @csc = Ecet.where(:subject => "Computer Science", :testcount => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :testcount => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def ece
    @ecet = Ecet.new
    if params[:count]
      tc = Ecet.where(:testcount => params[:count]).last
      if tc.blank?
        tc = 0
      else
        tc = tc.testcount
      end
    else
      tc=0
    end
    @mc = Ecet.where(:subject => "Mathematics", :testcount => tc)
    @pc = Ecet.where(:subject => "Physics", :testcount => tc)
    @cc = Ecet.where(:subject => "Chemistry", :testcount => tc)
    @civc = Ecet.where(:subject => "Civil", :testcount => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :testcount => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :testcount => tc)
    @csc = Ecet.where(:subject => "Computer Science", :testcount => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :testcount => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def cse
    @ecet = Ecet.new
    if params[:count]
      tc = Ecet.where(:testcount => params[:count]).last
      if tc.blank?
        tc = 0
      else
        tc = tc.testcount
      end
    else
      tc=0
    end
    @mc = Ecet.where(:subject => "Mathematics", :testcount => tc)
    @pc = Ecet.where(:subject => "Physics", :testcount => tc)
    @cc = Ecet.where(:subject => "Chemistry", :testcount => tc)
    @civc = Ecet.where(:subject => "Civil", :testcount => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :testcount => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :testcount => tc)
    @csc = Ecet.where(:subject => "Computer Science", :testcount => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :testcount => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def eee
    @ecet = Ecet.new
    if params[:count]
      tc = Ecet.where(:testcount => params[:count]).last
      if tc.blank?
        tc = 0
      else
        tc = tc.testcount
      end
    else
      tc=0
    end
    @mc = Ecet.where(:subject => "Mathematics", :testcount => tc)
    @pc = Ecet.where(:subject => "Physics", :testcount => tc)
    @cc = Ecet.where(:subject => "Chemistry", :testcount => tc)
    @civc = Ecet.where(:subject => "Civil", :testcount => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :testcount => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :testcount => tc)
    @csc = Ecet.where(:subject => "Computer Science", :testcount => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :testcount => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def mechanical
    @ecet = Ecet.new
    if params[:count]
      tc = Ecet.where(:testcount => params[:count]).last
      if tc.blank?
        tc = 0
      else
        tc = tc.testcount
      end
    else
      tc=0
    end
    @mc = Ecet.where(:subject => "Mathematics", :testcount => tc)
    @pc = Ecet.where(:subject => "Physics", :testcount => tc)
    @cc = Ecet.where(:subject => "Chemistry", :testcount => tc)
    @civc = Ecet.where(:subject => "Civil", :testcount => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :testcount => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :testcount => tc)
    @csc = Ecet.where(:subject => "Computer Science", :testcount => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :testcount => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def civil
    @ecet = Ecet.new
    if params[:count]
      tc = Ecet.where(:testcount => params[:count]).last
      if tc.blank?
        tc = 0
      else
        tc = tc.testcount
      end
    else
      tc=0
    end
    @mc = Ecet.where(:subject => "Mathematics", :testcount => tc)
    @pc = Ecet.where(:subject => "Physics", :testcount => tc)
    @cc = Ecet.where(:subject => "Chemistry", :testcount => tc)
    @civc = Ecet.where(:subject => "Civil", :testcount => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :testcount => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :testcount => tc)
    @csc = Ecet.where(:subject => "Computer Science", :testcount => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :testcount => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end


  def addecet
  	@ecet = Ecet.new(ecet_params)
  	@testcount = ecet_params['testcount']
        if @ecet.save
            redirect_to "/addecet/#{ecet_params['short_subject']}/#{ecet_params['testcount']}",  notice: 'Ecet Question was successfully added'
        else
            redirect_to "/addecet/#{ecet_params['short_subject']}/#{ecet_params['testcount']}", alert: "Something Wrong Please Check Input Feilds, Image allow only 'jpg jpeg gif png' "
        end
  end

  def testcount_question
    @total = Ecet.where(:testcount => params[:testcount], :short_subject => params[:subject])
  end

  def destroy
    Ecet.find(params[:id]).destroy
    flash[:success] =  "Eamcet test-#{params[:testcount]} question #{params[:id]} successfully"
    redirect_to "/adminecet/test_questions/#{params[:testcount]}"
  end


  private

   def ecet_params
      	params.require(:ecet).permit(:subject,:short_subject,:question,:a,:b,:c,:d,:answer,:testcount, :imageyes, :questionimage,:imagea,:imageb,:imagec,:imaged)
    end
end
