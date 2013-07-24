class CreateLifestyleSubgenreInferenceConnectors < ActiveRecord::Migration
  def change
    create_table :lifestyle_subgenre_inference_connectors do |t|
      t.integer :lifestyle_subgenre_id
      t.integer :inference_id

      t.timestamps
    end
  end
end
