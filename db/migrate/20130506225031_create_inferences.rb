class CreateInferences < ActiveRecord::Migration
  def change
    create_table :inferences do |t|
      t.string :inference

      t.timestamps
    end
  end
end
