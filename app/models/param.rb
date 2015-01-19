class Param < ActiveRecord::Base
  
  validates :key, presence: true,
                  allow_blank: false,
                  uniqueness: true

  def self.biografia
    begin
      where(key: biografia_key).first.value
    rescue
      ''
    end
  end
  
  def self.biografia=(biografia)
    where(key: biografia_key).first_or_create.update_attribute(:value, biografia)
  end
  
  def self.new_contato(key, value)
    create(key: "#{contato_prepend}#{ key.gsub(' ', '_') }", value: value)
  end
  
  def self.contatos_hash
    r = {}
    where.not(key: biografia_key).map do |p|
      r[p.key.gsub(contato_prepend, '')] = p.value
    end
    r
  end
  
  def self.biografia_key
    'param.biografia'
  end
  
  def self.contato_prepend
    'contato.'
  end
  
end
