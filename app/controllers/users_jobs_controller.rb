class UsersJobsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_job, only: %i[ apply ]
    include JobsConcern

    def index 
      @user = current_user
      @user.jobs
    end

   # POST /users_jobs/:id/apply
   def apply 
    save_job_into_user_creater(@job)
    
  debugger
   end

   private 
    def set_job 
      @job = Job.find(params[:id])
    end
end