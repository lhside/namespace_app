class ::Category < ActiveRecord::Base
  validates_presence_of :rank, :name
  validates_uniqueness_of :name

  has_many :posts, dependent: :restrict_with_error

  scope :ordered, -> { order(:rank) }

  logger.info "[INFO] ::Category loaded! #{'=' * 50}"
end
