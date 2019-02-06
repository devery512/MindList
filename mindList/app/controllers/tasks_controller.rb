class TasksController < ApplicationController
	def new
		@task = Task.new
	end

	def create
		@task = Task.create(task_params)
		@task = Task.all
	end

	def edit
		
	end

	def destroy
		@task = Task.find(params[:id]).destroy
		
	end

	def save
		
	end

	private
		def task_params
			params.require(:task).permit(:title, :note, :completed, :id)
		end
end
