class CreateEstadosPagamentos < ActiveRecord::Migration
  def change
    create_table :estados_pagamentos do |t|
      t.string :estado

      t.timestamps
    end
  end
end
