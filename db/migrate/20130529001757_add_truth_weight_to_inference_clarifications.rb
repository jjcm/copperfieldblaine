class AddTruthWeightToInferenceClarifications < ActiveRecord::Migration
  def change
    add_column :inference_clarifications, :truth_weight, :integer
  end
end
