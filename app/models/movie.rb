class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: true, presence: true, allow_blank: false
  validates :overview, presence: true, allow_blank: false
  before_destroy :check_for_bookmarks?

  private

  def check_for_bookmarks?
    errors.add(:base, "cannot delete movie with bookmarks") unless bookmarks.count == 0
    errors.blank?
  end
end
