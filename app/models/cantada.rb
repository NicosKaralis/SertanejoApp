class Cantada < ActiveRecord::Base
  
  validates :from_user, presence: true,
                        allow_blank: false,
                        numericality: { greater_than: 0, message: 'nao pode ser menor que 0' }
  
  validates :to_user, presence: true,
                      allow_blank: false,
                      numericality: { greater_than: 0, message: 'nao pode ser menor que 0' }
  
  validates :content, presence: true,
                      allow_blank: false
  
  def self.from_sender(user_id)
    where(from_user: user_id)
  end
  
  def self.to_reciver(user_id)
    where(to_user: user_id)
  end
  
  def sender
    User.where(fb_id: from_user).first
  end
  
  def reciver
    User.where(fb_id: to_user).first
  end
  
  def as_json(options={})
    super options.merge only: filtered_params, methods: filtered_methods
  end
  
  def to_xml(options={})
    super options.merge only: filtered_params, methods: filtered_methods
  end
  
  def filtered_params
    [:content]
  end
  
  def filtered_methods
    [:sender, :reciver]
  end
  
end
