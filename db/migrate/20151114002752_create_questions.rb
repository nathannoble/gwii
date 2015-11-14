class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :answer
      t.references :author, index: true

      t.timestamps null: false
    end
    add_foreign_key :questions, :authors
  end
end
