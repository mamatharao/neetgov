 class EcetexamController < ApplicationController
  before_action :authenticate_user!
  def index
    livetest = Livetest.where(:testcount => params[:count], :subject => params[:subject], :status => "yes").last
    if !livetest.blank?
      @time = Testcount.where(:testcount => params[:count], :shortsubject => params[:subject], :userid => current_user.id).last
      

      if @time.blank?
        @time = Testcount.create(:testcount => params[:count], :subject => params[:subject], :userid => current_user.id, :shortsubject => params[:subject], :submited => "no", :cet => "ecet")
        @statcount = @time.id
      elsif @time.submited == "yes"
        @time = Testcount.create(:testcount => params[:count], :subject => params[:subject], :userid => current_user.id, :shortsubject => params[:subject], :submited => "no", :cet => "ecet")
        @statcount = @time.id
      elsif ((Time.now - @time.created_at) >= 3.hours)
        @time = Testcount.create(:testcount => params[:count], :subject => params[:subject], :userid => current_user.id, :shortsubject => params[:subject], :submited => "no", :cet => "ecet")
        @statcount = @time.id
      end

      @questions = Ecet.where(:testcount => params[:count], :short_subject => ['Mathematics', 'Physics', 'Chemistry', params[:subject]]).order("subject = 'Mathematics' desc").order("subject = 'Physics' desc").order("subject = 'Chemistry' desc").order("subject = '#{@sub}' desc").paginate(:page => params[:page], :per_page => 1)
      # @questions = Ecet.where(:tc => tc, :subject => ['Mathematics', 'Physics', 'Chemistry', @sub]).order("subject = 'Mathematics' desc").order("subject = 'Physics' desc").order("subject = 'Chemistry' desc").order("subject = '#{@sub}' desc").paginate(:page => params[:page], :per_page => 1)
      puts @questions.count
      @submitquestion =Ecetexam.new
    else
      redirect_to "/", alert: "Please start exam from here."
    end
  	
  end

  def submitquestion
    @question = Ecetexam.new(submitquestion_params)
    @question.userid = current_user.id
    @questions = Ecet.where(:testcount => submitquestion_params["testcount"])
    puts @questions.count
    if @question.valid?
      @question.save
      redirect_to "/exam/ecet/#{@question.subject}/1?page=#{@question.pageno.to_i}", :notice => "Question submitted"
    else
      if @questions.count < @question.pageno.to_i
        redirect_to "/exam/ecet/#{@question.subject}/1?page=#{@question.pageno.to_i}", :alert => "Please choose option"
      else
        redirect_to "/exam/ecet/#{@question.subject}/1?page=#{@question.pageno.to_i-1}", :alert => "Please choose option"
      end
    end
  end

  def submitquestion_edit
    @question = Ecetexam.find(params[:id])
  end

  def submitquestion_update
     @question = Ecetexam.find(params[:id])
  
    if @question.update_attributes(submitquestion_params)
       redirect_to "/exam/ecet/#{@question.subject}/1?page=#{@question.pageno.to_i}"
    else
      redirect_to "/exam/ecet/#{@question.subject}/1"
    end

  end

  def ecettimesubmit
    submit = Testcount.where(:userid => current_user, :subject => params[:subject], :testcount => params[:count]).last
    submit.update(:submited => "yes")
    render json: "success"
  end

  def ecetresults
    puts "count #{params[:count]}"
    puts "subject #{params[:subject]}"
    submit = Testcount.where(:userid => current_user, :subject => params[:subject], :testcount => params[:count]).last
    submit.update(:submited => "yes")
    @ecetresults = Ecetexam.where(:testcount => params[:count], :userid => current_user.id,:startcount => submit, :subject => ['Mathematics', 'Physics', 'Chemistry', params[:subject]]).order("subject = 'Mathematics' desc").order("subject = 'Physics' desc").order("subject = 'Chemistry' desc").order("subject = '#{params[:subject]}' desc").paginate(:page => params[:page], :per_page => 10)
    results = Ecetexam.where(:testcount => params[:count], :userid => current_user.id, :subject => ['Mathematics', 'Physics', 'Chemistry', params[:subject]]).order("subject = 'Mathematics' desc").order("subject = 'Physics' desc").order("subject = 'Chemistry' desc").order("subject = '#{params[:subject]}' desc")
    i=0
    j=0
    k=0
    puts results.count
    puts "******************************"
    results.each do |r|
      answer=Ecet.find(r.question_id)
      puts answer.answer
      puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
      if r.answer == answer.answer
        i+=1
      end
    end
    puts i
    puts "+++++++++++++++++++++++++++++++++"
    # @questions = Ecet.where(:tc => tc, :subject => ['Mathematics', 'Physics', 'Chemistry', params[:subject]])
  end

  def ecet_subjects
    
  end

  def ecet_subjects_tests
    @livetests = Livetest.where(:subject => params[:subject], :status => "yes")
  end

  private
  def submitquestion_params
  	params.require(:ecetexam).permit(:question_id,:userid,:answer,:testcount,:subject,:pageno,:startcount)
  end
end
