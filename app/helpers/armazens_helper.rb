module ArmazensHelper
    
  def format_phone(telefone)
    return "" unless telefone
    image_tag("Metro-Phone-Blue-32.png", alt: 'Telef.:', size: '16x16') +" " + telefone.to_s[0,3] + "-" + telefone.to_s[3,3] + "-" + telefone.to_s[6,3]
  end
  
end
