class CreateEstadosEncomendas < ActiveRecord::Migration
  def change
    create_table :estados_encomendas do |t|
      t.string :estado

      t.timestamps
    end
  end
end
