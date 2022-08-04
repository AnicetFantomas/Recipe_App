class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.decimal :quantity
      t.belongs_to :recipe, foreign_key: true
      t.belongs_to :food, foreign_key: true

      t.timestamps
    end
  end
end
