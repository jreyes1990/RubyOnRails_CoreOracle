# == Schema Information
#
# Table name: roles
#
#  id              :integer          not null, primary key
#  codigo_hex      :string(255)
#  descripcion     :string(255)
#  estado          :string(10)
#  nombre          :string(200)
#  slug            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_created_id :integer
#  user_updated_id :integer
#
# Indexes
#
#  index_roles_on_slug  (slug)
#
require 'rails_helper'

RSpec.describe Rol, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
