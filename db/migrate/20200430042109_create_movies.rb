class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :poster_path
      t.string :backdrop_path
      t.string :genres
      t.string :homepage
      t.string :overview
      t.float :popularity
      t.string :release_date
      t.integer :runtime
      t.string :status
      t.string :tagline
      t.string :title
      t.float :vote_average
      t.integer :vote_count

      t.timestamps
    end
  end
end
