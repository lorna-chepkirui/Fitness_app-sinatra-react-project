# This controller will control the flow of any fetches made in our routine route. 
class RoutineController < ApplicationController
    
    # Add your routes here
    get "/routines" do
      routines = Routine.all
      routines.to_json include: :exercises
    end

    get "/routines/:id" do
      routine = Routine.find_by_id(params[:id])
      routine.to_json
    end

    post "/routines" do
      routine = Routine.create(
        routine_name: params[:routine_name],
        muscle_group: params[:muscle_group],
        personal_trainer_id: params[:personal_trainer_id],
        routine_image: params[:routine_image],
      )
      routine.to_json
    end
  
    patch "/routines/:id" do
      routine = Routine.find(params[:id])
      routine.update(
        routine_name: params[:routine_name],
        muscle_group: params[:muscle_group],
        personal_trainer_id: params[:personal_trainer_id],
        routine_image: params[:routine_image],
      )
      routine.to_json
    end

    delete "/routines/:id" do
      routine = Routine.find(params[:id])
      routine.destroy
      Routine.all.to_json
    end
  end