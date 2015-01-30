class Post < ActiveRecord::Base
  
  validates :content, presence: true,
                      allow_blank: false
  
  validates :user_id, presence: true,
                      allow_blank: false,
                      numericality: { greater_than: 0, message: 'nao pode ser menor que 0' }
  
  def self.page(number)
    data = aproved.limit(10).offset(number.to_i * 10)
    more = aproved.count / 10
    
    [data, more > number.to_i]
  end
  
  def self.aproved
    where(aproved: 1)
  end
  
  def self.pending
    where(aproved: nil)
  end
  
  def aprove
    update_attribute(:aproved, 1)
  end
  
  def sender
    User.where(fb_id: user_id.to_i).first
  end
  
  def as_json(options={})
    super options.merge only: filtered_params, methods: filtered_methods
  end
  
  def to_xml(options={})
    super options.merge only: filtered_params, methods: filtered_methods
  end
  
  def filtered_params
    [:content, :created_at]
  end
  
  def filtered_methods
    [:sender]
  end
  
end
