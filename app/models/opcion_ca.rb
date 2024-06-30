# == Schema Information
#
# Table name: opcion_cas
#
#  id(Identificador de la llave primaria)                                        :integer          not null, primary key
#  descripcion(Descripci??n general de la opci??n_ca)                            :string(255)
#  estado(Estado de la opci??n-componente-atributo: [A]: Activo  [I]: Inactivo)  :string(10)       default("A"), not null
#  created_at(Fecha y hora al registrar datos)                                   :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                  :datetime         not null
#  atributo_id(Identificador del atributo para la opci??n_ca)                    :integer          not null
#  componente_id(Identificador del componente para la opci??n_ca)                :integer          not null
#  opcion_id(Identificador del menu para la opci??n_ca)                          :integer          not null
#  user_created_id(Identificador de usuario al registrar en la aplicaci??n web)  :integer          not null
#  user_updated_id(Identificador de usuario al actualizar en la aplicaci??n web) :integer
#
# Indexes
#
#  i_opcion_cas_atributo_id       (atributo_id)
#  i_opcion_cas_componente_id     (componente_id)
#  index_opcion_cas_on_opcion_id  (opcion_id)
#
# Foreign Keys
#
#  fk_opcionca_atributo    (atributo_id => atributos.id)
#  fk_opcionca_componente  (componente_id => componentes.id)
#  fk_opcionca_opcion      (opcion_id => opciones.id)
#
class OpcionCa < ApplicationRecord
  belongs_to :opcion
  belongs_to :componente
  belongs_to :atributo

  validates_presence_of :opcion_id, :componente_id, :atributo_id, :estado, message: ": este campo es obligatorio"
  validates :opcion_id, uniqueness: {case_sensitive: false, scope: [:componente_id, :atributo_id, :estado], message: "El Permiso Formulario que intenta registrar ya existe" }
end
