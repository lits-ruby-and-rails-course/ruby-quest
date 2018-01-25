class Teachers::QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_role

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end
  def new
	  @question = Question.new
  end

	# def create
 #  	@questions = Question.new(params[:question])
 
 #  	@questions.save
 #  	redirect_to teachers_questions_path
	# end
  def create
    @question = Question.new params.require(:question).permit(:title)
 
    if @question.save
      redirect_to  teachers_questions_path
    else
      render 'new'
    end
  end


	private
  def question_params
    params.require(:question).permit(:question, :text)
  end

  private

  def check_role
    redirect_to root_path, alert: 'You are not a teacher' unless current_user.teacher?
  end
end
