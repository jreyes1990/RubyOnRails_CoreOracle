# == Schema Information
#
# Table name: users
#
#  id(Identificador de la llave primaria)                                        :integer          not null, primary key
#  consumed_timestep                                                             :integer
#  current_sign_in_at                                                            :datetime
#  current_sign_in_ip                                                            :string(255)
#  email(Corre electronico del usuario)                                          :string(255)      default(""), not null
#  encrypted_otp_secret                                                          :string(255)
#  encrypted_otp_secret_iv                                                       :string(255)
#  encrypted_otp_secret_salt                                                     :string(255)
#  encrypted_password(Password-Contraseña encriptada)                            :string(255)      default(""), not null
#  estado(Estado del user: [A]: Activo;  [I]: Inactivo)                          :string(255)      default("A")
#  last_sign_in_at                                                               :datetime
#  last_sign_in_ip                                                               :string(255)
#  otp_required_for_login                                                        :string(1)
#  password_changed                                                              :string(1)        default("f")
#  password_changed_at                                                           :datetime
#  remember_created_at                                                           :datetime
#  reset_password_sent_at                                                        :datetime
#  reset_password_token                                                          :string(255)
#  sign_in_count                                                                 :integer          default(0), not null
#  created_at(Fecha y hora al registrar datos)                                   :datetime         not null
#  updated_at(Fecha y hora al actualizar datos)                                  :datetime         not null
#  user_created_id(Identificador del usuario al registrar en la aplicación web)  :integer
#  user_updated_id(Identificador del usuario al actualizar en la aplicación web) :integer
#
# Indexes
#
#  uidx_email           (email) UNIQUE
#  uidx_resetpasstoken  (reset_password_token) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
