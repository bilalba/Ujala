class WorkersController < ApplicationController
	def new
    # default: render 'new' template
  	end
  	def index
  		@all_workers = Worker.all
  	end

  	def edit
    @worker = Worker.find params[:id]
  	end

  	def update
    	@worker = Worker.find params[:id]
    	@worker.update_attributes!(params[:movie])
    	flash[:notice] = "Information of #{@worker.name} was successfully updated."
    	redirect_to workers_path(@worker)
  end

  	def destroy
  	end 

  	def show
	    id = params[:id] # retrieve movie ID from URI route
	    @Worker = Worker.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  	end
	def create
    	@Worker = Worker.create!(params[:worker])
    	flash[:notice] = "#{@Worker.name} was successfully created."
   		redirect_to workers_path(@worker)
    end
end
