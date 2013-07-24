class CreateLifestyleCues < ActiveRecord::Migration
  def change
    create_table :lifestyle_cues do |t|
      t.string :cue

      t.timestamps
    end
  end
end
