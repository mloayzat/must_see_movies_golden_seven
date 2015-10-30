class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :image_url
      t.string :dob
      t.string :name
      t.string :bio

      t.timestamps null: false
    end
  end
end
