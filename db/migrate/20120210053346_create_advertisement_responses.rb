class CreateAdvertisementResponses < ActiveRecord::Migration
  def change
    create_table :advertisements_responses do |t|
      t.string :advertisement_id
      t.integer :response_id

      t.timestamps
    end
  end
end
