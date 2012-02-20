class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :headline
      t.string :body_text
      t.string :hyperlink
      t.string :domain

      t.timestamps
    end
  end
end
