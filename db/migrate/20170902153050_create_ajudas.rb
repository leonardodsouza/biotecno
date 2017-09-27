class CreateAjudas < ActiveRecord::Migration[5.1]
  def change
    create_table :ajudas do |t|
      t.string :pergunta
      t.text :resposta

      t.timestamps
    end
  end
end
