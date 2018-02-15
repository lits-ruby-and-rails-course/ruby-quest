class Teachers::ExamsController < Teachers::ApplicationController
  def index
    @exams = Exam.all
  end

  def show
    @exam = Exam.find(params[:id])
  end

  def new
    @exam = Exam.new
    @exam.quizzes.build
  end

  def edit
    @exam = Exam.find(params[:id])
  end

  def create
    @exam = Exam.new(exam_params)
    if @exam.save
      redirect_to teachers_exams_path
    else
      render 'new'
    end
  end

  def update
    @exam = Exam.find(params[:id])
    if @exam.update(exam_params)
      redirect_to teachers_exams_path
    else
      render 'edit'
    end
  end

  def destroy
    @exam = Exam.find(params[:id])
    @exam.destroy
    redirect_to teachers_exams_path
  end

private

  def exam_params
    params.require(:exam).permit(:title, :start_time, :end_time, quiz_ids: [], quizzes_attributes: [:id])
  end
end
