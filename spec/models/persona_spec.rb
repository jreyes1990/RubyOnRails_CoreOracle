# == Schema Information
#
# Table name: personas
#
#  id               :integer          not null, primary key
#  apellido         :string(200)
#  chat_id_telegram :integer
#  direccion        :string(255)
#  estado           :string(10)
#  foto             :text
#  nombre           :string(200)
#  telefono         :integer
#  token            :string(1000)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_created_id  :integer
#  user_id          :integer          not null
#  user_updated_id  :integer
#
# Indexes
#
#  index_personas_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Persona, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
