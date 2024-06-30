# == Schema Information
#
# Table name: personas_areas
#
#  id              :integer          not null, primary key
#  descripcion     :string(255)
#  estado          :string(10)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  area_id         :integer          not null
#  persona_id      :integer          not null
#  rol_id          :integer
#  user_created_id :integer
#  user_updated_id :integer
#
# Indexes
#
#  i_personas_areas_area_id     (area_id)
#  i_personas_areas_persona_id  (persona_id)
#
# Foreign Keys
#
#  fk_rails_...  (area_id => areas.id)
#  fk_rails_...  (persona_id => personas.id)
#
require 'rails_helper'

RSpec.describe PersonasArea, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
