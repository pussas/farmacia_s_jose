module Layouts
  
  module ApplicationLayoutHelper

    def is_active?(link_name, attributes = {}, &block)
      attributes["class"] = "active" if params[:controller] == link_name
      content_tag("li", attributes, &block)
    end
  
    def create_form_buttons(new_record, path)    
      label_botao = new_record ? t('helpers.submit.create_html') : t('helpers.submit.update_html') 
    
      content_tag(:div, :class => 'form-actions', id: 'div_botoes_sumbmissao_formulario') do
        content_tag(:button, class: 'btn btn-success', type: 'submit', id: 'botao_sumbissao_formulario') do 
          content_tag(:span, label_botao)
        end + 
      
        '&nbsp;&nbsp;&nbsp;'.html_safe +
      
        content_tag(:a, :href => path) do
          content_tag(:span, t('links.cancelar'))
        end
      end
    end # create_form_buttons
    
    def sortable(column, title = nil)
      
      title ||= column.titleize
      
      css_class = column == sort_column ? "current_column_sort #{sort_direction}" :nil
      direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
      
      link_to title, {:sort => column, :direction => direction}, {:class => css_class}
      
    end
    
    def is_form_attribute_with_error?(erro, attributes = {}, &block)
      attributes[:class] = attributes[:class] +" error" if erro
      content_tag("div", attributes, &block)
    end
    
  end # module ApplicationLayoutHelper
end # module Layouts