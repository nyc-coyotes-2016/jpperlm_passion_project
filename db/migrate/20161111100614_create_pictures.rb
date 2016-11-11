class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :user
      t.string :url
      t.text :text
      t.decimal :anger
      t.decimal :contempt
      t.decimal :disgust
      t.decimal :fear
      t.decimal :happiness
      t.decimal :neutral
      t.decimal :sadness
      t.decimal :surprise
      t.string :score

      t.timestamps(null: false)
    end
  end
end
