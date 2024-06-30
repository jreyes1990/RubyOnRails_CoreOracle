# == Schema Information
#
# Table name: credenciales_usuarios
#
#  id                    :integer          not null, primary key
#  actualizo_password    :string(255)
#  correo_electronico    :string(255)
#  enviar_correo         :string(255)
#  enviar_telegram       :string(255)
#  estado                :string(10)
#  estado_envio_correo   :string(255)
#  estado_envio_telegram :string(255)
#  nombre_area           :string(255)
#  nombre_empresa        :string(255)
#  nombre_usuario        :string(255)
#  password_temporal     :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  area_id               :integer
#  empresa_id            :integer
#  persona_id            :integer
#  user_created_id       :integer
#  user_id               :integer
#  user_updated_id       :integer
#
require 'rails_helper'

RSpec.describe CredencialesUsuario, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
