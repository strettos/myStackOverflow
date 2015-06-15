class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])

    @answer = @question.answers.build(answer_params)
    if @answer.save
      redirect_to question_path(@answer.question_id)
    else
      render :new
    end
  end

  private

    def answer_params
      params.require(:answer).permit(:question_id, :body)
    end
end
