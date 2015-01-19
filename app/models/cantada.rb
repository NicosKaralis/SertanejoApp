class Cantada < ActiveRecord::Base
  
  validates :text, presence: true,
                   allow_blank: false
  
end
