class User < ActiveRecord::Base
  
  validates :nome, presence: true,
                   allow_blank: false
                    
  validates :fb_id, presence: true,
                    allow_blank: false,
                    uniqueness: true,
                    numericality: { greater_than: 0, message: 'nao pode ser menor que 0' }
  
  validates :foto_url, presence: true,
                       allow_blank: false,
                       format: { with: /\Ahttp[s]{0,1}:\/\//i, message: 'não é uma url' }
                       
  validates :sexo, presence: true,
                   allow_blank: false,
                   format: { with: /\A[mf]\z/i, message: 'valores permitidos [m f]' }
    
  def self.buscar(user_id, sexo)
    where.not(fb_id: user_id.to_i).where(sexo: sexo).order("RANDOM()").first
  end
  
  def self.masculinos
    where(sexo: 'm')
  end
  
  def self.femininos
    where(sexo: 'f')
  end
  
  def as_json(options={})
    super options.merge only: filtered_params
  end
  
  def to_xml(options={})
    super options.merge only: filtered_params
  end
  
  def filtered_params
    [:nome, :fb_id, :foto_url, :sexo]
  end
  
end
