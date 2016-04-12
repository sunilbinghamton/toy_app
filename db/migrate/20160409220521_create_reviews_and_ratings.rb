class CreateReviewsAndRatings < ActiveRecord::Migration
  def change
    create_table :reviews_and_ratings do |t|
      t.string :foodcourts
      t.string :foodoutlets
      t.timestamps null: false
    end
  end
end
