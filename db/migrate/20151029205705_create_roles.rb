class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :character_name
      t.string :movie_id
      t.string :actor_id

      t.timestamps null: false
    end
  end
end
