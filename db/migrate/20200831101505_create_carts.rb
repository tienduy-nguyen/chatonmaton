class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.belong_to :user

      t.timestamps
    end
  end
end
