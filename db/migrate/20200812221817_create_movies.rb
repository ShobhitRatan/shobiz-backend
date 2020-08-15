class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :language
      t.string :overview
      t.string :release_date
      t.string :image_1
      t.string :image_2
      t.timestamps
    end
  end
end
