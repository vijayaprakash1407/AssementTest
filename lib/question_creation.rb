class QuestionCreation
  def self.create
    Question.create(:name=>"Ipad is useful in everyday?",:option_id=>Option.create(:name=>"Yes").id)
   
    q= Question.create(:name=>"TCS company size?")
    op=Option.create(:name=>"5000-10000",:question_id=>q.id)
    op1=Option.create(:name=>"more than 100000",:question_id=>q.id)
    op2=Option.create(:name=>"Less than 1000",:question_id=>q.id)
    q.option_id=op1.id
    q.save
    
    q3=Question.create(:name=>"Ruby on rails latest version?")
    op3=Option.create(:name=>"3.0.0",:question_id=>q3.id)
    op4=Option.create(:name=>"4.0.0",:question_id=>q3.id)
    q3.option_id=op4.id
    q3.save
    
    q4=Question.create(:name=>"Next world cup cricket in which country?")
    op5=Option.create(:name=>"Australia",:question_id=>q4.id)
    op6=Option.create(:name=>"India",:question_id=>q4.id)
    q4.option_id=op5.id
    q4.save 
    
    q5=Question.create(:name=>"Next Olympic in which country?")
    op7=Option.create(:name=>"Australia",:question_id=>q5.id)
    op8=Option.create(:name=>"India",:question_id=>q5.id)
    q5.option_id=op8.id
    q5.save 
     
     q6=Question.create(:name=>"Media product growing faster?")
    op9=Option.create(:name=>"Yes",:question_id=>q6.id)
    op10=Option.create(:name=>"No",:question_id=>q6.id)
    q6.option_id=op10.id
    q6.save 
  end
end