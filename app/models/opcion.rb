# == Schema Information
#
# Table name: opciones
#
#  id(Cat??logo de opciones)                                                     :integer          not null, primary key
#  aplica_carga_masiva                                                           :string(10)
#  codigo_hex(Color Hexadecimal que identificar?? la opci??n)                    :string(255)
#  controlador(Identificador de controlador de navegaci??n)                      :string(300)      not null
#  descripcion(Descripci??n general de la opci??n)                               :string(255)
#  estado(Estado de la opci??n: [A]: Activo;  [I]: Inactivo)                     :string(10)       default("A")
#  icono(Icono que identificar?? la opci??n)                                     :string(50)
#  nombre(Nombre de la opci??n)                                                  :string(200)      not null
#  path(Identificador de ruta de navegaci??n)                                    :string(255)      not null
#  posicion(Orden que tendra cada opci??n)                                       :integer
#  created_at                                                                    :datetime         not null
#  updated_at                                                                    :datetime         not null
#  menu_id(Identificador del menu para la opci??n)                               :integer          not null
#  user_created_id(Identificador de usuario al registrar en la aplicaci??n web)  :integer
#  user_updated_id(Identificador de usuario al actualizar en la aplicaci??n web) :integer          not null
#
# Indexes
#
#  index_opciones_on_menu_id  (menu_id)
#
# Foreign Keys
#
#  fk_rails_...  (menu_id => menus.id)
#
class Opcion < ApplicationRecord
  belongs_to :menu

  has_many :menu_roles
  has_many :opcion_cas
  
  validates_presence_of :nombre, :path, :controlador, :menu_id, :estado, message: ": este campo es obligatorio"
  validates :nombre, uniqueness: {case_sensitive: false, scope: [:icono, :codigo_hex, :path, :controlador, :menu_id, :estado], message: "El Menú-Opción que intenta registrar ya existe" }
end
