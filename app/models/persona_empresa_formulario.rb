# == Schema Information
#
# Table name: persona_empresa_formularios
#
#  id(Identificador de la llave primaria)                                        :integer          not null, primary key
#  descripcion(Descripci??n general de la persona empresa formulario)            :string(255)
#  estado(Estado de la persona empresa formulario: [A]: Activo  [I]: Inactivo)   :string(10)       default("A"), not null
#  created_at(Fecha y hora al registrar datos)                                   :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                  :datetime         not null
#  opcion_ca_id(Identificador de la opcion-componente-atributo)                  :integer          not null
#  personas_area_id(Identificador de la persona por ??rea)                       :integer          not null
#  user_created_id(Identificador de usuario al registrar en la aplicaci??n web)  :integer          not null
#  user_updated_id(Identificador de usuario al actualizar en la aplicaci??n web) :integer
#
# Indexes
#
#  i_per_emp_for_opc_ca_id   (opcion_ca_id)
#  i_per_emp_for_per_are_id  (personas_area_id)
#
# Foreign Keys
#
#  fk_peform_opcionca    (opcion_ca_id => opcion_cas.id)
#  fk_peform_personarea  (personas_area_id => personas_areas.id)
#
class PersonaEmpresaFormulario < ApplicationRecord
  belongs_to :personas_area
  belongs_to :opcion_ca
end
