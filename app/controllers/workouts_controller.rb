class WorkoutsController < ApplicationController
    
    before_action :find_workout, only: [:show, :edit, :update, :destroy]
    
    
    def index
        @workouts = Workout.all.order("created_at DESC")
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
            redirect_to workout_path(@workout)
        else
            render 'new'
        end
    end
    
    
    def update
        if @workout.update(workout_params)
            redirect_to workout_path(@workout)
        else
            render 'new'
        end
        
    end
    
    
    def destroy
        if @workout.destroy
            redirect_to root_path
        end
        
    end
    
    
    
    
    
    private
    def workout_params
    params.require(:workout).permit(:date, :workout, :mood, :length)
    end
    
    def find_workout
        @workout = Workout.find(params[:id])
    end
end
