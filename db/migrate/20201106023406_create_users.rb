class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :name
      t.text :password
      t.text :image
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
