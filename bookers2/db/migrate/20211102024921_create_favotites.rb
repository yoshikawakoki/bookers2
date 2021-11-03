class CreateFavotites < ActiveRecord::Migration[5.2]
  def change
    create_table :favotites do |t|
      t.references :user, foreign_key: true, null: false
      t.references :book, foreign_key: true, null: false

      t.timestamps
    end
  end
end
