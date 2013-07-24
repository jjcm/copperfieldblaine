class AddLifestyleGenreIdToInferenceClarifications < ActiveRecord::Migration
  def change
    add_column :inference_clarifications, :lifestyle_subgenre_id, :integer
  end
end
