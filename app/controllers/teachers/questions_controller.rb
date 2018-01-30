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

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
 
    if @question.save
      redirect_to  [:teachers, :questions]
    else
      render 'new'
    end
  end

  def update
  @question = Question.find(params[:id])
 
  if @question.update(question_params)
    redirect_to  [:teachers, :questions]
  else
    render 'edit'
  end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
 
    redirect_to teachers_questions_path
  end

	private
  def question_params
    params.require(:question).permit(:title, :text)
  end

  private

  def check_role
    redirect_to root_path, alert: 'You are not a teacher' unless current_user.teacher?
  end
end
