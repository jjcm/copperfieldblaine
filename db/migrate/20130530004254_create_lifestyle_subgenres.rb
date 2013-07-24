class CreateLifestyleSubgenres < ActiveRecord::Migration
  def change
    create_table :lifestyle_subgenres do |t|
      t.string :genre
      t.integer :lifestyle_cue_id

      t.timestamps
    end
  end
end
