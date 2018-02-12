class Teachers::QuestionsController < Teachers::ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
    @question.answers.build
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to teachers_questions_path
    else
      render 'new'
    end
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to teachers_questions_path
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
    params.require(:question).permit(:title, :text, answer_ids: [], answers_attributes: [:title])
  end
end
