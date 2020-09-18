class QuizController < ApplicationController
  def index
    @subjects = Subject.all
    @selected_sub_id = params[:subject_id].to_i
    @qa = Question.all
  end

  def check
    @qa_data = params[:qa_list].permit!

    # making actioncontroller params accessible through list
    @data_list = @qa_data.to_h.to_a

    @qn_id_ans = []
    @qn_id = []
    @guess = []
    @correct_answer = 0
    @data_list.each do |data|
      qn_id  = data[1][0].to_i
      guess = data[1][1]
      answer = Question.find(qn_id).answer
      if guess == answer
        @correct_answer += 1
      end
    end
    # data_list:  @data_list, qn_id_ans: @qn_id_ans
    render json: {score: @correct_answer}  

  end

  def result

    @all_score = Result.pluck("score")
    @int_score = []
    @all_score.each do |score|
      @int_score.push(score.to_i)
    end
    @max_score = @int_score.max

    @subject_id = params[:subject_id].to_i
    @score = params[:score].to_i
    @user_id = current_user.id
    @result = Result.where(user_id: @user_id).where(subject_id: @subject_id)

    if @result == []
      @new_result = Result.create(score: @score, user_id: @user_id, subject_id: @subject_id) 
      @your_best = @score   
    else
      @prev_score = @result.pluck("score")[0].to_i
      if @score > @prev_score 
        @result.update(score: @score)
        @your_best = @score
      else
        @your_best = @prev_score
      end
    end
    render json: {your_best: @your_best, score: @score, prev_score: @prev_score, max_score: @max_score}
  end

end
