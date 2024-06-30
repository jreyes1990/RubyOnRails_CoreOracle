# == Schema Information
#
# Table name: menus
#
#  id              :integer          not null, primary key
#  codigo_hex      :string(255)
#  descripcion     :string(255)
#  estado          :string(10)
#  icono           :string(50)
#  nombre          :string(200)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_created_id :integer
#  user_updated_id :integer
#
require 'rails_helper'

RSpec.describe Menu, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
