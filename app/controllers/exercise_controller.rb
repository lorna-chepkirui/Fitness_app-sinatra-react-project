class ExerciseController < ApplicationController
    
    # Add your routes here
    get "/exercises" do
        exercise = Exercise.all
        exercise.to_json
    end

    get "/exercises/:id" do
        exercise = Exercise.find_by_id(params[:id])
        exercise.to_json
    end

    post "/exercises" do
        exercise = Exercise.create(
          name: params[:name],
          instructions: params[:instructions],
          personal_trainer_id: params[:personal_trainer_id],
          routine_id: params[:routine_id]
        )
        exercise.to_json
      end
    
    patch "/exercises/:id" do
        exercise = Exercise.find(params[:id])
        exercise.update(
            name: params[:name],
            instructions: params[:instructions],
            personal_trainer_id: params[:personal_trainer_id],
            routine_id: params[:routine_id]
        )
        exercise.to_json
    end

    delete "/exercises/:id" do
        exercise = Exercise.find(params[:id])
        exercise.destroy
    end
  
  end