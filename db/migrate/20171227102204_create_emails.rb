class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :contato_01
      t.string :contato_02
      t.string :manutencao_01
      t.string :manutencao_02
      t.string :orcamento_01
      t.string :orcamento_02

      t.timestamps
    end
  end
end
