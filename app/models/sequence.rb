class Sequence < ActiveRecord::Base
  belongs_to :assembly
  has_many :genes
  has_many :hits, through: :genes

  validates :assembly_id, presence: true
end
