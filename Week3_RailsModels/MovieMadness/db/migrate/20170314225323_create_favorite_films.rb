class CreateFavoriteFilms < ActiveRecord::Migration
  def change
    create_table :favorite_films do |t|
      t.references :user, index: true, foreign_key: true
      t.references :film, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end