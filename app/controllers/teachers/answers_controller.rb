class Teachers::AnswersController < ApplicationController
  before_action :authenticate_user!

	def index
		@answers = Answer.all
  end

	def show
	    @answer = Answer.find(params[:id])
	end

	def new
		@answer = Answer.new
	end

	def edit
  		@answer = Answer.find(params[:id])
	end

	def create
	   		@answer = Answer.new(answer_params)
	 
	  	if @answer.save
	  		redirect_to [:teachers, :answers]
	  	else 
	  		render 'new'
	  	end
	end

	def update
  		@answer = Answer.find(params[:id])
 
  		if @answer.update(answer_params)
    		redirect_to [:teachers, :answers]
  		else
    		render 'edit'
  		end
	end


	def destroy
	  @answer = Answer.find(params[:id])
	  @answer.destroy
	 
	  redirect_to [:teachers, :answers]
	end

		private
	def answer_params
	     params.require(:answer).permit(:title)
	end
end
