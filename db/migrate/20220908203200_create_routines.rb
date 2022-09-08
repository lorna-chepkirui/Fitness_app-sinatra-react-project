class CreateRoutines < ActiveRecord::Migration[6.1]
  def change
    create_table :routines do |t|
      t.string :routine_name
      t.string :muscle_group
      t.integer :personal_trainer_id
      t.string :routine_image
    end
  end
end
