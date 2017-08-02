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

  validates :title, 
            :presence => {:message => "can't be blank" }

  validates :description, 
            :presence => {:message => "can't be blank" },
            :length => { :maximum => 400, :message => "DEben ser 400 caracteres!"}  
  validates :beds, 
            :presence => {:message => "can't be blank" }
  
  validates :guests,
            :presence => {:message => "can't be blank" }
  
  validates :beds,:guests,
            format: { with: /\A\d+\z/, message: "Solo numeros!!" }
  
  validates :image_url,
            :presence => {:message => "can't be blank" }

end
