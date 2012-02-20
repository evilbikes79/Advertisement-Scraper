class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :search_id
      t.string :response_html

      t.timestamps
    end
  end
end
