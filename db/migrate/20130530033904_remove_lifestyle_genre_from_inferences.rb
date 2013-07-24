class RemoveLifestyleGenreFromInferences < ActiveRecord::Migration
  def up
    remove_column :inferences, :lifestyle_genre_id
  end

  def down
  end
end
