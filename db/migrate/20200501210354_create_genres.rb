class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.integer :id_from_api
      t.string :name

      t.timestamps
    end
  end
end
