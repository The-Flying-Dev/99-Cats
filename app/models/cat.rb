require 'action_view'

class Cat < ApplicationRecord 
  include ActionView::Helpers::DateHelper

  CAT_COLORS = ["brown","black","orange","blue"]

  validates :color, inclusion: CAT_COLORS
  validates :sex, inclusion: { in: ["m", "f"] }
  validates :birth_date, :color, :name, :sex, presence: true

end