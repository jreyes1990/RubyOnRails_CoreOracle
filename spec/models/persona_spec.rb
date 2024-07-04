# == Schema Information
#
# Table name: personas
#
#  id(Identificador de la llave primaria)                                       :integer          not null, primary key
#  apellido(Apellido de la persona)                                             :string(200)      not null
#  chat_id_telegram                                                             :integer
#  direccion                                                                    :string(255)
#  estado(Estado de la persona: [A]: Activo  [I]: Inactivo)                     :string(10)       default("A"), not null
#  foto(Foto de la persona)                                                     :text
#  nombre(Nombre de la persona)                                                 :string(200)      not null
#  telefono                                                                     :integer
#  token                                                                        :string(1000)
#  created_at(Fecha y hora al registrar datos)                                  :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                 :datetime         not null
#  user_created_id(Identificador de usuario al registrar en la aplicación web)  :integer          not null
#  user_id(Identificador del usuario)                                           :integer          not null
#  user_updated_id(Identificador de usuario al actualizar en la aplicación web) :integer
#
# Indexes
#
#  index_personas_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_persona_user  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Persona, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
