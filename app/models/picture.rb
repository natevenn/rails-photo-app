# == Schema Information
#
# Table name: pictures
#
#  id          :integer          not null, primary key
#  title       :string
#  position    :integer
#  is_print    :boolean
#  description :string
#  category_id :integer
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Picture < ApplicationRecord
  belongs_to :category

  mount_uploader :image, ImageUploader

  # Validations
  validates :is_print, presence: true
  validates :image, presence: true
  validates :position, presence: true
end
