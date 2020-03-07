class Skill < ApplicationRecord
  includegit pull Placeholder
  validates_presence_of :title, :percent_level

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
