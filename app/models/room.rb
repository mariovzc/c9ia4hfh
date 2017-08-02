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
  validates :title, presence: true,
    message: "El titlo no puede estar en blanco :^("
  
    validates :description, presence: true, maximum:  400,
    message: "La descripcion es obligatoria y maximo 400 caracteres!!!!!"
  
    validates :beds, presence: true,
    message: "Este campo es obligatorio mi amigo"
  
    validates :guests, presence: true,
    message: "Etse opmac se oirotagilbo im ogima"
  
  validates :beds,:guest, format: { with: /\A\d+\z/, message: "Solo numeros!!" }
  
    validates :image_url, presence: true,
    message: "Santas bativalidaciones tenemos problemas! este campo es obligatorio"
end
