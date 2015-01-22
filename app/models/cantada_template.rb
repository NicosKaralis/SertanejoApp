class CantadaTemplate < ActiveRecord::Base
  validates :text, presence: true,
                   allow_blank: false
  
  def as_json(options={})
    super options.merge only: filtered_params
  end
  
  def to_xml(options={})
    super options.merge only: filtered_params
  end
  
  def filtered_params
    [:text]
  end
  
end
