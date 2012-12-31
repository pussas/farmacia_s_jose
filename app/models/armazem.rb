require 'trimmer'
class Armazem < ActiveRecord::Base
  include Trimmer

  attr_accessible :designacao, :telefone

#  before_validation :strip_designacao_whitespace

  trimmed_fields :designacao, :telefone
  
  validates_presence_of :designacao
  with_options :allow_blank => true do |v|
    v.validates :designacao, :length => { :minimum => 3, :maximum => 250}
    v.validates_uniqueness_of :designacao
  end
  
  #validates_format_of :telefone, :with => /^(\d{9})$/i, :allow_blank => true
  validates_format_of :telefone, :with => /^[0-9]{9}$/, :allow_blank => true
# validates_length_of :telefone, :is => 9
#  validates_numericality_of :telefone

  
#  private
#  def strip_designacao_whitespace
#    self.designacao.strip!
#  end
  
end
