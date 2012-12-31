# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
FarmaciaSJose::Application.initialize!

# FORM ERRORS
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  
   errors = Array(instance.error_message).join(',')
   
   unless html_tag =~ /^<label/
     %(#{html_tag}<span class="help-inline">&nbsp;#{errors}</span>).html_safe
   else
     %{#{html_tag}}.html_safe
   end
  
end