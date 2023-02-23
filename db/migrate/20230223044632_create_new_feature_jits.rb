class CreateNewFeatureJits < ActiveRecord::Migration[7.0]
  def change
    create_table :new_feature_jits do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
