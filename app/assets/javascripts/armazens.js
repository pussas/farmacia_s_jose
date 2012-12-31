//= require bootstrap
//= require bootstrap-modal

$(document).ready(function() {
		
	// EXIBE UM ECRA MODAL COM MENSAGEM DE CONFIRMACAO QUANDO PRETENDEMOS ELIMINAR UM ARMAZEM
	$('a.btn-danger[id^="link_eliminar_armazem_"]').click(function(event) {	
		
		event.preventDefault();
		
		var id_link = this.id;
		var id_armazem = id_link.substring(id_link.lastIndexOf('_') + 1);
		
		// DESIGNACAO DO ARMAZEM A ELIMINAR
		var designacao_armazem = $('#span_designacao_armazem_'+id_armazem).html();
		$('#span_designacao_armazem_eliminar').html(designacao_armazem);
		
		// PROCESSAMENTO DO LINK DO ARMAZEM A ELIMINAR
		var href_eliminar_armazem = $('#link_modal_eliminar_armazem').attr("href")+"/"+id_armazem;
		$('#link_modal_eliminar_armazem').attr("href", href_eliminar_armazem);
		
		$('#ecra_modal_eliminar').modal('show')
		
	});

	// DESACTIVA O BOTAO ELIMINAR DO ECRA MODAL (PROTECCAO CONTRA DUPLO CLIQUE)
	$('a.btn-danger[id="link_modal_eliminar_armazem"]').click(function(event) {	
		$(this).attr('disabled', true);		
	});
	
});