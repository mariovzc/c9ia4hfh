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
=begin
validates :title, 
          :presence => {:message => "Title can't be blank." },
          :uniqueness => {:message => "Title already exists."},
          :length => { :maximum => 100, :message => "Must be less than 100 characters"}  
=end 

  validates :title, :description, :beds, :guests, :image_url, presence: true
  validates :description, length: { maximum: 400 }
  validates :beds, :guests, numericality: { only_integer: true }

end
