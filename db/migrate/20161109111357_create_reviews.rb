class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.string :message
      t.references :user
      t.references :restaurant
    end
  end
end
