class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.integer :id_from_api
      t.string :poster_path
      t.string :backdrop_path
      t.string :overview
      t.string :release_date
      t.integer :runtime
      t.string :tagline
      t.string :title

      t.timestamps
    end
  end
end
