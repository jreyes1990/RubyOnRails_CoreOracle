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
require 'rails_helper'

RSpec.describe OpcionCa, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
