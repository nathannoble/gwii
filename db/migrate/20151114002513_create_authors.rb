class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :email
      t.string :alias

      t.timestamps null: false
    end
  end
end
