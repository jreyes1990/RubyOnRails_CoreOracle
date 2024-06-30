# == Schema Information
#
# Table name: parametros
#
#  id                  :integer          not null, primary key
#  nombre_area         :string(255)
#  nombre_empresa      :string(255)
#  ruta_predeterminada :string(255)
#  view_default        :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  area_id             :integer
#  empresa_id          :integer
#  user_id             :integer          not null
#
# Indexes
#
#  index_parametros_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Parametro, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
