class CreateArmazens < ActiveRecord::Migration
  def change
    create_table :armazens do |t|

      t.string :designacao
      t.integer :telefone, limit: 9

      t.timestamps
    end
  end
end
