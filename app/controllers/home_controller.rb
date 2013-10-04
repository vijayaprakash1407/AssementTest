class HomeController < ApplicationController
  def index
    
  end
  
  def questionnaire
    @questions=Question.all
    
  end
  
  def save_questionnaire
    points=0
    count=0
    qcount=0
    Question.all.collect{|question|
      qcount=qcount + 1
      if params["question_#{question.id}"]==question.option_id.to_s
        points = points + 10
        count=count + 1
        
        if count==3 and qcount==3
          points = points + 5
        end
      end
      
      
      Answer.create(:user_id=>params[:user],:option_id=>params["question_#{question.id}"],:question_id=>question.id)
      
      }
    
    if points < 30
      @questions=Question.all
      render :action=>"questionnaire"
    else
      ScoreBoard.create(:user_id=>params[:user],:points=>points)
      redirect_to :action=>"score_board"
    end
    
  end
  
  def score_board
    @score_board = ScoreBoard.order("points Desc")
  end
end
