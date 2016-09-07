class WorkoutsController < ApplicationController
    
    
    def index
        @workouts = Workout.all
    end
    
    def show
    end
    
    
    def new
        @workout = Workout.new
    end
    
    
    def edit
        
    end
    
    
    def create
        @workout = Workout.new(workout_params)
        if @workout.save
            redirect_to workout_path
        else
            render 'new'
        end
    end
    
    
    def updated
        
        
    end
    
    
    def destroy
        
    end
    
    
    
    
    
    private
    def workout_params
    params.require(:workout).permit(:date, :workout, :mood, :length)
    end
end
