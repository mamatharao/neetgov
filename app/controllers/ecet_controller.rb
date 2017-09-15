class EcetController < ApplicationController
	require 'carrierwave/orm/activerecord'
  before_action :authenticate_user!
  before_action :check_admin
  def index
  	@total =Ecet.select(:test_count).map(&:test_count).uniq
  end

  def mathematics
  	@ecet = Ecet.new
  	if params[:count]
  		tc = Ecet.where(:test_count => params[:count]).last
  		if tc.blank?
  			tc = 0
  		else
  			tc = tc.test_count
  		end
  	else
  		tc=0
  	end
  	@mc = Ecet.where(:subject => "Mathematics", :test_count => tc)
  	@pc = Ecet.where(:subject => "Physics", :test_count => tc)
    @cc = Ecet.where(:subject => "Chemistry", :test_count => tc)
    @civc = Ecet.where(:subject => "Civil", :test_count => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :test_count => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :test_count => tc)
    @csc = Ecet.where(:subject => "Computer Science", :test_count => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :test_count => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def physics
  	@ecet = Ecet.new
  	if params[:count]
  		tc = Ecet.where(:test_count => params[:count]).last
  		if tc.blank?
  			tc = 0
  		else
  			tc = tc.test_count
  		end
  	else
  		tc=0
  	end
  	@mc = Ecet.where(:subject => "Mathematics", :test_count => tc)
  	@pc = Ecet.where(:subject => "Physics", :test_count => tc)
    @cc = Ecet.where(:subject => "Chemistry", :test_count => tc)
    @civc = Ecet.where(:subject => "Civil", :test_count => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :test_count => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :test_count => tc)
    @csc = Ecet.where(:subject => "Computer Science", :test_count => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :test_count => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def chemistry
    @ecet = Ecet.new
    if params[:count]
      tc = Ecet.where(:test_count => params[:count]).last
      if tc.blank?
        tc = 0
      else
        tc = tc.test_count
      end
    else
      tc=0
    end
    @mc = Ecet.where(:subject => "Mathematics", :test_count => tc)
    @pc = Ecet.where(:subject => "Physics", :test_count => tc)
    @cc = Ecet.where(:subject => "Chemistry", :test_count => tc)
    @civc = Ecet.where(:subject => "Civil", :test_count => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :test_count => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :test_count => tc)
    @csc = Ecet.where(:subject => "Computer Science", :test_count => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :test_count => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def ece
    @ecet = Ecet.new
    if params[:count]
      tc = Ecet.where(:test_count => params[:count]).last
      if tc.blank?
        tc = 0
      else
        tc = tc.test_count
      end
    else
      tc=0
    end
    @mc = Ecet.where(:subject => "Mathematics", :test_count => tc)
    @pc = Ecet.where(:subject => "Physics", :test_count => tc)
    @cc = Ecet.where(:subject => "Chemistry", :test_count => tc)
    @civc = Ecet.where(:subject => "Civil", :test_count => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :test_count => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :test_count => tc)
    @csc = Ecet.where(:subject => "Computer Science", :test_count => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :test_count => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def cse
    @ecet = Ecet.new
    if params[:count]
      tc = Ecet.where(:test_count => params[:count]).last
      if tc.blank?
        tc = 0
      else
        tc = tc.test_count
      end
    else
      tc=0
    end
    @mc = Ecet.where(:subject => "Mathematics", :test_count => tc)
    @pc = Ecet.where(:subject => "Physics", :test_count => tc)
    @cc = Ecet.where(:subject => "Chemistry", :test_count => tc)
    @civc = Ecet.where(:subject => "Civil", :test_count => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :test_count => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :test_count => tc)
    @csc = Ecet.where(:subject => "Computer Science", :test_count => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :test_count => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def eee
    @ecet = Ecet.new
    if params[:count]
      tc = Ecet.where(:test_count => params[:count]).last
      if tc.blank?
        tc = 0
      else
        tc = tc.test_count
      end
    else
      tc=0
    end
    @mc = Ecet.where(:subject => "Mathematics", :test_count => tc)
    @pc = Ecet.where(:subject => "Physics", :test_count => tc)
    @cc = Ecet.where(:subject => "Chemistry", :test_count => tc)
    @civc = Ecet.where(:subject => "Civil", :test_count => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :test_count => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :test_count => tc)
    @csc = Ecet.where(:subject => "Computer Science", :test_count => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :test_count => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def mechanical
    @ecet = Ecet.new
    if params[:count]
      tc = Ecet.where(:test_count => params[:count]).last
      if tc.blank?
        tc = 0
      else
        tc = tc.test_count
      end
    else
      tc=0
    end
    @mc = Ecet.where(:subject => "Mathematics", :test_count => tc)
    @pc = Ecet.where(:subject => "Physics", :test_count => tc)
    @cc = Ecet.where(:subject => "Chemistry", :test_count => tc)
    @civc = Ecet.where(:subject => "Civil", :test_count => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :test_count => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :test_count => tc)
    @csc = Ecet.where(:subject => "Computer Science", :test_count => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :test_count => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end

  def civil
    @ecet = Ecet.new
    if params[:count]
      tc = Ecet.where(:test_count => params[:count]).last
      if tc.blank?
        tc = 0
      else
        tc = tc.test_count
      end
    else
      tc=0
    end
    @mc = Ecet.where(:subject => "Mathematics", :test_count => tc)
    @pc = Ecet.where(:subject => "Physics", :test_count => tc)
    @cc = Ecet.where(:subject => "Chemistry", :test_count => tc)
    @civc = Ecet.where(:subject => "Civil", :test_count => tc)
    @eec = Ecet.where(:subject => "Electrical & Electronics", :test_count => tc)
    @ecc = Ecet.where(:subject => "Electronics & Communication", :test_count => tc)
    @csc = Ecet.where(:subject => "Computer Science", :test_count => tc)
    @mecc = Ecet.where(:subject => "Mechanical", :test_count => tc)
    @total = @mc.count+@pc.count+@cc.count+@civc.count+@eec.count+@ecc.count+@csc.count+@mecc.count
  end


  def addecet
  	@ecet = Ecet.new(ecet_params)
  	@test_count = ecet_params['test_count']
        if @ecet.save
            redirect_to "/addecet/#{ecet_params['short_subject']}/#{ecet_params['test_count']}",  notice: 'Ecet Question was successfully added'
        else
            redirect_to "/addecet/#{ecet_params['short_subject']}/#{ecet_params['test_count']}", alert: "Something Wrong Please Check Input Feilds, Image allow only 'jpg jpeg gif png' "
        end
  end

  def test_count_question
    @total = Ecet.where(:test_count => params[:test_count])
  end

  def destroy
    Ecet.find(params[:id]).destroy
    flash[:success] =  "Eamcet test-#{params[:test_count]} question #{params[:id]} successfully"
    redirect_to "/adminecet/test_questions/#{params[:test_count]}"
  end


  private

   def ecet_params
      	params.require(:ecet).permit(:subject,:short_subject,:question,:a,:b,:c,:d,:answer,:test_count, :type, :que_image,:imagea,:imageb,:imagec,:imaged)
    end
end
