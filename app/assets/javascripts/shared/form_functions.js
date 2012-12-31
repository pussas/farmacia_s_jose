$(document).ready(function() {
	
	// ESCONDE OS BOTOES DO FORMULARIO E EXIBE UMA IMAGEM ILUSTRATIVA DE PROGRESSO
	$('button.btn-success[id="botao_sumbissao_formulario"]').click(function(event) {	
		
		$(this).attr('disabled', true);
		
		$('#div_botoes_sumbmissao_formulario').hide();
		$('#div_loading').show();
		
		$('form.form-horizontal').each(function() {
			$('#'+this.id).submit();
		});
		
	});
	
});