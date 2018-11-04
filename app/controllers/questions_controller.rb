class QuestionsController < ApplicationController
  before_action :find_test, only: %i[index]
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    view = @test.questions.inspect
    render plain: view
  end

  def show
    view = @question.inspect
    render plain: view
  end

  def new; end

  def create
    question = Question.create!(question_params)
    render plain: test.inspect
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
    params.require(:question).permit(:body, :test_id)
  end

  def rescue_with_question_not_found
    view = "The question with id - #{params[:id]} wasn\'t found"
    render plain: view
  end
end
