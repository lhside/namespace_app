class ::Post < ActiveRecord::Base
  belongs_to :category, required: true

  validates_presence_of :name, :title, :body, :published_at
  validates_uniqueness_of :name

  scope :ordered, -> { order(:published_at) }
end
