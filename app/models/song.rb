class Song < ApplicationRecord
  #validates :title, presence: { message: 'you should enter a song title'}, uniqueness: true
  #validate :my_validation

  #validates_with NameValidator

  before_validation :set_slug
  belongs_to :singer, counter_cache: true

  def my_validation
    if title.length != 2
      errors.add(:title, "you have to have")
    end
  end
  def check_content
   content.length == 2
  end

  def set_slug
    if self.title.empty?
      throw :abort
    end
    self.slug = title.parameterize
  end

end
