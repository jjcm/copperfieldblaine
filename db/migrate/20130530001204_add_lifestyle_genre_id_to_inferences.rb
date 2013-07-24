class AddLifestyleGenreIdToInferences < ActiveRecord::Migration
  def change
    add_column :inferences, :lifestyle_genre_id, :integer
  end
end
