# == Schema Information
#
# Table name: persona_empresa_formularios
#
#  id               :integer          not null, primary key
#  descripcion      :string(255)
#  estado           :string(10)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  opcion_ca_id     :integer          not null
#  personas_area_id :integer          not null
#  user_created_id  :integer
#  user_updated_id  :integer
#
# Indexes
#
#  i_per_emp_for_opc_ca_id   (opcion_ca_id)
#  i_per_emp_for_per_are_id  (personas_area_id)
#
# Foreign Keys
#
#  fk_rails_...  (opcion_ca_id => opcion_cas.id)
#  fk_rails_...  (personas_area_id => personas_areas.id)
#
require 'rails_helper'

RSpec.describe PersonaEmpresaFormulario, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
