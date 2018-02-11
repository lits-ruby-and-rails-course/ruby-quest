class Teachers::QuizzesController < Teachers::ApplicationController
  def index
    @quizzes = Quiz.all
  end
 
   def show
    @quiz = Quiz.find(params[:id])
  end

  def new
    @quiz = Quiz.new
  end
 
  def edit
    @quiz = Quiz.find(params[:id])
  end
 
  def create
    @quiz = Quiz.new(quiz_params)
 
    if @quiz.save
      redirect_to [:teachers, :quizzes]
    else
      render 'new'
    end
  end
 
  def update
    @quiz = Quiz.find(params[:id])
 
    if @quiz.update(quiz_params)
      redirect_to [:teachers, :quizzes]
    else
      render 'edit'
    end
  end
 
  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
 
    redirect_to [:teachers, :quizzes]
  end
 
  private
    
  def quiz_params
    params.require(:quiz).permit(:title)
  end
end
