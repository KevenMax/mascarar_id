class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :slug
      t.integer :idade
      t.date :data_nascimento

      t.timestamps null: false
    end
  add_index :pessoas, :slug, unique: true
  
  end
end
