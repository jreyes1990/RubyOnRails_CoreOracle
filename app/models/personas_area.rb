# == Schema Information
#
# Table name: personas_areas
#
#  id(Identificador de la llave primaria)                                        :integer          not null, primary key
#  descripcion(Descripci??n general de la persona por ??rea)                     :string(255)
#  estado(Estado de la persona por ??rea: [A]: Activo  [I]: Inactivo)            :string(10)       default("A"), not null
#  created_at(Fecha y hora al registrar datos)                                   :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                  :datetime         not null
#  area_id(Identificador del ??rea para la persona por ??rea)                    :integer          not null
#  persona_id(Identificador de la persona para la persona por ??rea)             :integer          not null
#  rol_id(Identificador del rol para la persona por ??rea)                       :integer
#  user_created_id(Identificador de usuario al registrar en la aplicaci??n web)  :integer          not null
#  user_updated_id(Identificador de usuario al actualizar en la aplicaci??n web) :integer
#
# Indexes
#
#  i_personas_areas_area_id        (area_id)
#  i_personas_areas_persona_id     (persona_id)
#  index_personas_areas_on_rol_id  (rol_id)
#
# Foreign Keys
#
#  fk_personarea_area     (area_id => areas.id)
#  fk_personarea_persona  (persona_id => personas.id)
#  fk_personarea_rol      (rol_id => roles.id)
#
class PersonasArea < ApplicationRecord
  belongs_to :persona
  belongs_to :area

  validates_presence_of :persona_id, :area_id, :estado, message: ": este campo es obligatorio"
  validates :persona_id, uniqueness: {case_sensitive: false, scope: [:area_id, :estado], message: "La Persona-Área que intenta registrar ya existe" }

  def nombre_area
    "#{self.area.empresa.nombre} - #{self.area.nombre} "
  end 

  def user_id
    self.persona.user_id
  end 

  def nombre_persona
    "#{self.persona.nombre} #{self.persona.apellido}"
  end 
end
