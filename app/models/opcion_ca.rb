# == Schema Information
#
# Table name: opcion_cas
#
#  id              :integer          not null, primary key
#  descripcion     :string(255)
#  estado          :string(10)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  atributo_id     :integer          not null
#  componente_id   :integer          not null
#  opcion_id       :integer          not null
#  user_created_id :integer
#  user_updated_id :integer
#
# Indexes
#
#  i_opcion_cas_atributo_id       (atributo_id)
#  i_opcion_cas_componente_id     (componente_id)
#  index_opcion_cas_on_opcion_id  (opcion_id)
#
# Foreign Keys
#
#  fk_rails_...  (atributo_id => atributos.id)
#  fk_rails_...  (componente_id => componentes.id)
#  fk_rails_...  (opcion_id => opciones.id)
#
class OpcionCa < ApplicationRecord
  belongs_to :opcion
  belongs_to :componente
  belongs_to :atributo

  validates_presence_of :opcion_id, :componente_id, :atributo_id, :estado, message: ": este campo es obligatorio"
  validates :opcion_id, uniqueness: {case_sensitive: false, scope: [:componente_id, :atributo_id, :estado], message: "El Permiso Formulario que intenta registrar ya existe" }
end
