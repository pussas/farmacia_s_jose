# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

EstadosEncomenda.delete_all
EstadosEncomenda.create(estado: 'Anulado')
EstadosEncomenda.create(estado: 'Carrinho')
EstadosEncomenda.create(estado: 'Devolvido')
EstadosEncomenda.create(estado: 'Entregue')
EstadosEncomenda.create(estado: 'Frigorifico')
EstadosEncomenda.create(estado: 'Pendente')
EstadosEncomenda.create(estado: 'Linear')
EstadosEncomenda.create(estado: 'Rebatido')
EstadosEncomenda.create(estado: 'Robot')

EstadosPagamento.delete_all
EstadosPagamento.create(estado: 'Pago')
EstadosPagamento.create(estado: 'Nao pago')
EstadosPagamento.create(estado: 'Rebatido')
EstadosPagamento.create(estado: 'Para rebate')

Armazem.delete_all
Armazem.create(designacao: 'Alliance')
Armazem.create(designacao: 'Britos')
Armazem.create(designacao: 'Carlos Silva')
Armazem.create(designacao: 'Codifar')
Armazem.create(designacao: 'Cofanor Montemor')
Armazem.create(designacao: 'Cofanor Porto')
Armazem.create(designacao: 'Cosmetica activa')
Armazem.create(designacao: 'Diaria')
Armazem.create(designacao: 'Dilofar')
Armazem.create(designacao: 'Farmacia Melo')
Armazem.create(designacao: 'Farmisuave')
Armazem.create(designacao: 'Gameiros')
Armazem.create(designacao: 'Juzo')
Armazem.create(designacao: 'Medical Express')
Armazem.create(designacao: 'Medivaris')
Armazem.create(designacao: 'OCP')
Armazem.create(designacao: 'Pierre Fabre')
Armazem.create(designacao: 'Plural')
Armazem.create(designacao: 'Proquifa')
Armazem.create(designacao: 'Raul Vieira')
Armazem.create(designacao: 'SiloalVet')