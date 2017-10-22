class CreateQuemSomos < ActiveRecord::Migration[5.1]
  def change
    create_table :quem_somos do |t|
      t.string :titulo
      t.string :texto

      t.timestamps
    end
  end
end
