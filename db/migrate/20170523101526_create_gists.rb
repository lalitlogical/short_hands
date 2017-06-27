class CreateGists < ActiveRecord::Migration[5.0]
  def change
    create_table :gists do |t|
      t.references :user, foreign_key: true
      t.text :description
      t.text :tags
      t.text :code

      t.timestamps
    end
  end
end
