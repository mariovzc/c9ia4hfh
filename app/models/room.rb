# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#

class Room < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true, maximum:  400
  validates :beds, presence: true
  validates :guests, presence: true
  validates :beds,:guest, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
  validates :image_url, presence: true
end
