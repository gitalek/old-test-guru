class QuestionsController < ApplicationController
  before_action :find_test, only: %i[index create]
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    data = @test.questions.inspect
    render plain: data
  end

  def show
    data = @question.inspect
    render plain: data
  end

  def new; end

  def create
    question = @test.questions.create!(question_params)
    render plain: question.inspect
  end

  def destroy
    @question.destroy

    redirect_to test_questions_path
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    data = "The question with id - #{params[:id]} wasn\'t found"
    render plain: data, status: :not_found
  end
end
