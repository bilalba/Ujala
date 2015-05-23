class WorkersController < ApplicationController
	def new
    @all_skills = Worker.all_skills
    # default: render 'new' template
  	end
  	def index
  		@all_workers = Worker.all
  	end

  	def edit
      @all_skills = Worker.all_skills
      @worker = Worker.find params[:id]
      @my_skills = @worker[:skills]
  	end

  	def update
      abc = ""
      params[:skills].each do |key, value|
        abc = abc + "," + key
      end
      abc[0] = ''
    	@worker = Worker.find params[:id]
    	@worker.update_attributes!(params[:worker])
      abc
      @worker.update_attributes!(:skills => abc)
      if @selected_skills == {}
      @selected_skills = Hash[@all_skills.map {|skill| [skill, skill]}]
    end
    	flash[:notice] = "Information of #{@worker.name} was successfully updated."
    	redirect_to workers_path(@worker)
  end

  	def destroy
      @worker = Worker.find(params[:id])
      @worker.destroy
      flash[:notice] = "Worker '#{@worker.name}' deleted."
      redirect_to workers_path
  	end 

  	def show
	    id = params[:id] # retrieve movie ID from URI route
	    @Worker = Worker.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  	end
	def create
      abc = ""
      params[:skills].each do |key, value|
        abc = abc + "," + key
      end
      abc[0] = ''

    	@Worker = Worker.create!(params[:worker])
      @Worker.update_attributes!(:skills => abc)
      # update_attributes!
      Rails.logger.warn "LOLLLOLOL \n\n\n"
      Rails.logger.warn  abc

    	flash[:notice] = "#{@Worker.name} was successfully created."
   		redirect_to workers_path
    end
end
