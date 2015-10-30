class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :image_url
      t.string :title
      t.string :year
      t.string :duration
      t.string :description
      t.string :director_id

      t.timestamps null: false
    end
  end
end
