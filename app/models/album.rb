class Album < ActiveRecord::Base
  
  validates :nome, presence: true,
                   allow_blank: false

  validates :capa, presence: true,
                   allow_blank: false
  
  validates :release, presence: true
  
  validates :itunes_store, presence: true,
                           allow_blank: true,
                           format: { with: /\Ahttps:\/\/itunes.apple.com\//i }

  validates :play_store, presence: true,
                         allow_blank: true,
                         format: { with: /\Amarket:\/\//i }
  
  scope :released, -> { where('release <= ?', Time.now.to_date).order(:release) }
  
  # scope :with_itunes,    -> { where('itunes_store IS NOT NULL AND itunes_store <> ?', '') }
  # scope :with_playstore, -> { where('play_store IS NOT NULL AND play_store <> ?', '') }
  
  def as_json(options)
    super options.merge only: [:nome, :capa, :itunes_store, :play_store], methods: :release_date
  end
  
  def release_date
    self.release.to_datetime.to_i
  end
  
end
