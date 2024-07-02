
usuarios = [
  { email: "jreyes1990.test@gmail.com",  encrypted_password: "$2a$12$XM9n0jp/ut8OJ5fD5Gamo.4o/OMc4UgKYrq7EQ.3hLGxSpb2P/cqW", reset_password_token: "2d26e6612f4eaecec1c0baa7f7a4a71801ffb12d64b864aff3173a4eea0896aa", reset_password_sent_at: "2021-11-11 22:48:09", remember_created_at: nil, estado: "A", user_created_id: nil, user_updated_id: nil }
]

usuarios.each do |user_params|
  usuario = User.find_or_initialize_by(email: user_params[:email])

  if usuario.persisted?  # Verifica si el usuario ya existe en la base de datos
    usuario.update!(user_params)
    puts "Usuario '#{user_params[:email]}' actualizado"
  else
    usuario.assign_attributes(user_params)
    usuario.save!(validate: false)
    puts "Usuario '#{user_params[:email]}' creado"
  end
end

personas = [
  { nombre: "Jolberth Alberto", apellido: "Reyes Lopez", direccion: "Colonia Las Delicias, Santa Lucia Cotzumalguapa", estado: "A", telefono: "54685874", user_id: 1, user_created_id: 1 }
]

personas.each do |persona_params|
  persona = Persona.find_or_initialize_by(user_id: persona_params[:user_id])

  if persona.persisted?  # Verifica si la persona ya existe en la base de datos
    persona.update!(persona_params)
    puts "Persona #{persona.nombre} #{persona.apellido} actualizada"
  else
    persona.assign_attributes(persona_params)
    persona.save!
    puts "Persona #{persona.nombre} #{persona.apellido} creada"
  end
end

empresas = [
  { codigo_empresa: 2, nombre: "Ingenio Madre Tierra", descripcion: "Empresa productora de azucar y sus derivados", codigo_hex: "#232323", estado: "A", user_created_id: 1, user_updated_id: nil }
]

empresas.each do |empresa_params|
  empresa = Empresa.find_or_initialize_by(codigo_empresa: empresa_params[:codigo_empresa])

  if empresa.persisted?  # Verifica si la empresa ya existe en la base de datos
    empresa.update!(empresa_params)
    puts "Empresa '#{empresa_params[:nombre]}' actualizada"
  else
    empresa.assign_attributes(empresa_params)
    empresa.save!
    puts "Empresa '#{empresa_params[:nombre]}' creada"
  end
end

areas = [
  { empresa_id: 1, codigo_area: 9, nombre: "Informatica", descripcion: "Departamento de Tecnologia e Informacion de la empresa Ingenio Madre Tierra.", codigo_hex: "#232323", estado: "A", user_created_id: 1, user_updated_id: nil }
]

areas.each do |area_params|
  area = Area.find_or_initialize_by(codigo_area: area_params[:codigo_area], empresa_id: area_params[:empresa_id])

  if area.persisted?  # Verifica si el área ya existe en la base de datos
    area.update!(area_params)
    puts "Área '#{area_params[:nombre]} ' actualizada"
  else
    area.assign_attributes(area_params)
    area.save!(validate: false)
    puts "Área '#{area_params[:nombre]}' creada"
  end
end

roles = [
  { nombre: "SUPER ADMINISTRADOR", descripcion: "Rol para administrar todo el sistema", codigo_hex: "#232323", estado: "A", user_created_id: 1, user_updated_id: nil }
]

roles.each do |rol_params|
  rol = Rol.find_or_initialize_by(nombre: rol_params[:nombre])

  if rol.persisted?  # Verifica si el rol ya existe en la base de datos
    rol.update!(rol_params)
    puts "Rol '#{rol_params[:nombre]}' actualizado"
  else
    rol.assign_attributes(rol_params)
    rol.save!(validate: false)
    puts "Rol '#{rol_params[:nombre]}' creado"
  end
end


personas_areas = [
  { persona_id: 1, area_id: 1, rol_id: 1, user_created_id: 1, user_updated_id: nil, estado: "A" }
]

personas_areas.each do |pa_params|
  personas_area = PersonasArea.find_or_initialize_by(persona_id: pa_params[:persona_id], area_id: pa_params[:area_id])

  if personas_area.persisted?  # Verifica si el registro ya existe en la base de datos
    personas_area.update!(pa_params)
    puts "Relación Persona-Area para Persona ID '#{pa_params[:persona_id]}' y Área ID '#{pa_params[:area_id]}' actualizada"
  else
    personas_area.assign_attributes(pa_params)
    personas_area.save!
    puts "Relación Persona-Area para Persona ID '#{pa_params[:persona_id]}' y Área ID '#{pa_params[:area_id]}' creada"
  end
end

atributos = [
  { nombre: "VER", descripcion: "Atributo que nos brinda la opción de ver.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "ACCESAR", descripcion: "Atributo que nos brinda el permiso de acceso a partes del sistema", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "VER OPCION", descripcion: "Atributo que nos brinda la opción de ver una opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil }
]

atributos.each do |atributo_params|
  atributo = Atributo.find_or_initialize_by(nombre: atributo_params[:nombre])

  if atributo.persisted?  # Verifica si el atributo ya existe en la base de datos
    atributo.update!(atributo_params)
    puts "Atributo '#{atributo_params[:nombre]}' actualizado"
  else
    atributo.assign_attributes(atributo_params)
    atributo.save!
    puts "Atributo '#{atributo_params[:nombre]}' creado"
  end
end

componentes = [
  { nombre: "OPCION", descripcion: "Componente para la validación de permisos a nivel de opciones del sistema.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "BOTON NUEVO REGISTRO", descripcion: "Botón para agregar un nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "BOTON REGISTRAR", descripcion: "Botón para agregar un nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "BOTON EDITAR REGISTRO", descripcion: "Botón para editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "BOTON ELIMINAR REGISTRO", descripcion: "Botón para la eliminar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "BOTON ACTIVAR/INACTIVAR", descripcion: "Botón para activar o inactivar un dato.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "BOTON MODAL REGISTRO", descripcion: "Botón para registrar desde un modal.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "BOTON MODULO CARGA MASIVA", descripcion: "Botón para acceder al modulo de la importacion de datos desde excel.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "BOTON DESCARGA", descripcion: "Botón para la descarga de el formato.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "BOTON CARGA MASIVA", descripcion: "Botón para la importacion de datos desde un archivo.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: 'BOTON ENLACE MODULO', descripcion: 'Boton para acceder a los modulos.', user_created_id: 1, user_updated_id: nil, estado: 'A' },
  { nombre: 'BOTON ENLACE DETALLE MODULO', descripcion: 'Boton para acceder al detalle de los modulos.', user_created_id: 1, user_updated_id: nil, estado: 'A' },
  { nombre: 'BOTON GENERA REPORTE', descripcion: 'Boton para generar los reportes.', user_created_id: 1, user_updated_id: nil, estado: 'A' },
  { nombre: 'BOTON FILTRO', descripcion: 'Boton para filtrar parametros de consulta.', user_created_id: 1, user_updated_id: nil, estado: 'A' },
  { nombre: "MENU USUARIOS", descripcion: "Validación del Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "MENU EMPRESAS", descripcion: "Validación del Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "MENU AREAS EMPRESA", descripcion: "Validación del Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "MENU USUARIO AREA", descripcion: "Validación del Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "MENU ROL", descripcion: "Validación del Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "MENU MENU", descripcion: "Validación del Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "MENU OPCION MENU", descripcion: "Validación del Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "MENU MENU ROL", descripcion: "Validación del Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "MENU ATRIBUTO", descripcion: "Validación del Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "MENU COMPONENTE", descripcion: "Validación del Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "MENU PERMISOS FORMULARIO", descripcion: "Validación del Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "MENU PERMISOS USUARIO", descripcion: "Validación del Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil }
]

componentes.each do |componente_params|
  componente = Componente.find_or_initialize_by(nombre: componente_params[:nombre])

  if componente.persisted?  # Verifica si el componente ya existe en la base de datos
    componente.update!(componente_params)
    puts "Componente '#{componente_params[:nombre]}' actualizado"
  else
    componente.assign_attributes(componente_params)
    componente.save!
    puts "Componente '#{componente_params[:nombre]}' creado"
  end
end

menus = [
  { nombre: "Configuración", descripcion: "Menú padre que contendrá las configuraciones del sistema.", icono: "fas fa-fw fa-wrench", estado: "A", user_created_id: 1, user_updated_id: nil },
  { nombre: "Catálogos", descripcion: "Menú padre que tendrá las opciones de los catálogos existentes", icono: "fas fa-fw fa-cog", estado: "A", user_created_id: 1, user_updated_id: nil }
]

menus.each do |menu_params|
  menu = Menu.find_or_initialize_by(nombre: menu_params[:nombre])

  if menu.persisted?  # Verifica si el menú ya existe en la base de datos
    menu.update!(menu_params)
    puts "Menú '#{menu_params[:nombre]}' actualizado"
  else
    menu.assign_attributes(menu_params)
    menu.save!
    puts "Menú '#{menu_params[:nombre]}' creado"
  end
end

# Opcion.create!([
#   {nombre: "Usuario", descripcion: "Opción del menú para la administración de los usuarios del sistema.", icono: "fas fa-users", path: "usuarios_path", controlador: "usuarios", estado: "A", menu_id: 1, user_created_id: 1, user_updated_id: nil},
#   {nombre: "Empresas", descripcion: "Opción del menú para la administración de las empresas del sistema.", icono: "fas fa-building", path: "empresas_path", controlador: "empresas", estado: "A", menu_id: 1, user_created_id: 1, user_updated_id: nil},
#   {nombre: "Área - Empresa", descripcion: "Opción del menú para la administración de las áreas por empresa del sistema.", icono: "fas fa-sitemap", path: "areas_path", controlador: "areas", estado: "A", menu_id: 1, user_created_id: 1, user_updated_id: nil},
#   {nombre: "Usuario - Área", descripcion: "Opción del menú para la administración de las asignaciones del los usuarios a areas del sistema.", icono: "fas fa-users", path: "personas_areas_path", controlador: "personas_areas", estado: "A", menu_id: 1, user_created_id: 1, user_updated_id: nil},
#   {nombre: "Rol", descripcion: "Opción del menú para la administración de los roles del sistema.", icono: "fas fa-user-tag", path: "roles_path", controlador: "roles", estado: "A", menu_id: 1, user_created_id: 1, user_updated_id: nil},
#   {nombre: "Menú", descripcion: "Opción del menú para la administración de los menús del sistema.", icono: "fab fa-elementor", path: "menus_path", controlador: "menus", estado: "A", menu_id: 1, user_created_id: 1, user_updated_id: nil},
#   {nombre: "Opción - Menú", descripcion: "Opción del menú para la administración de las opciones por menú del sistema.", icono: "fas fa-minus-square", path: "opciones_path", controlador: "opciones", estado: "A", menu_id: 1, user_created_id: 1, user_updated_id: nil},
#   {nombre: "Menú - Rol", descripcion: "Opción del menú para la administración de los menús por rol del sistema.", icono: "fas fa-user-cog", path: "menu_roles_path", controlador: "menu_roles", estado: "A", menu_id: 1, user_created_id: 1, user_updated_id: nil},
#   {nombre: "Atributo", descripcion: "Opción del menú para la administración de los atributos del sistema.", icono: "fas fa-atom", path: "atributos_path", controlador: "atributos", estado: "A", menu_id: 1, user_created_id: 1, user_updated_id: nil},
#   {nombre: "Componente", descripcion: "Opción del menú para la administración de los componentes del sistema.", icono: "fab fa-codepen", path: "componentes_path", controlador: "componentes", estado: "A", menu_id: 1, user_created_id: 1, user_updated_id: nil},
#   {nombre: "Permisos Formulario", descripcion: "Opción del menú para la administración de los permisos por formulario del sistema.", icono: "fas fa-clipboard-list", path: "opcion_cas_path", controlador: "opcion_cas", estado: "A", menu_id: 1, user_created_id: 1, user_updated_id: nil},
#   {nombre: "Permisos Usuario", descripcion: "Opción del menú para la administración de los permisos por usuario del sistema.", icono: "fas fa-clipboard-list", path: "persona_empresa_formularios_path", controlador: "persona_empresa_formularios", estado: "A", menu_id: 1, user_created_id: 1, user_updated_id: nil}
# ])

# MenuRol.create!([
#   {rol_id: 1, opcion_id: 1, menu_id: nil, estado: "A", user_created_id: 1, user_updated_id: nil},
#   {rol_id: 1, opcion_id: 2, menu_id: nil, estado: "A", user_created_id: 1, user_updated_id: nil},
#   {rol_id: 1, opcion_id: 3, menu_id: nil, estado: "A", user_created_id: 1, user_updated_id: nil},
#   {rol_id: 1, opcion_id: 4, menu_id: nil, estado: "A", user_created_id: 1, user_updated_id: nil},
#   {rol_id: 1, opcion_id: 5, menu_id: nil, estado: "A", user_created_id: 1, user_updated_id: nil},
#   {rol_id: 1, opcion_id: 6, menu_id: nil, estado: "A", user_created_id: 1, user_updated_id: nil},
#   {rol_id: 1, opcion_id: 7, menu_id: nil, estado: "A", user_created_id: 1, user_updated_id: nil},
#   {rol_id: 1, opcion_id: 8, menu_id: nil, estado: "A", user_created_id: 1, user_updated_id: nil},
#   {rol_id: 1, opcion_id: 9, menu_id: nil, estado: "A", user_created_id: 1, user_updated_id: nil},
#   {rol_id: 1, opcion_id: 10, menu_id: nil, estado: "A", user_created_id: 1, user_updated_id: nil},
#   {rol_id: 1, opcion_id: 11, menu_id: nil, estado: "A", user_created_id: 1, user_updated_id: nil},
#   {rol_id: 1, opcion_id: 12, menu_id: nil, estado: "A", user_created_id: 1, user_updated_id: nil}
# ])

# OpcionCa.create!([
#   {opcion_id: 1, componente_id: 15, atributo_id: 3, descripcion: "Permiso para ver la opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 1, componente_id: 1, atributo_id: 2, descripcion: "Permiso para acceder al modulo.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 1, componente_id: 2, atributo_id: 1, descripcion: "Permiso del botón nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 1, componente_id: 3, atributo_id: 1, descripcion: "Permiso del botón registrar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 1, componente_id: 4, atributo_id: 1, descripcion: "Permiso del botón editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 1, componente_id: 5, atributo_id: 1, descripcion: "Permiso del botón eliminar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 1, componente_id: 6, atributo_id: 1, descripcion: "Permiso del botón activar/inactivar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 1, componente_id: 7, atributo_id: 1, descripcion: "Permiso del botón registrar desde un modal.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 1, componente_id: 8, atributo_id: 1, descripcion: "Permiso del botón modulo carga masiva.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 1, componente_id: 9, atributo_id: 1, descripcion: "Permiso del botón descarga.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 1, componente_id: 10, atributo_id: 1, descripcion: "Permiso del botón carga masiva.", estado: "A", user_created_id: 1, user_updated_id: nil},

#   {opcion_id: 2, componente_id: 16, atributo_id: 3, descripcion: "Permiso para ver la opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 2, componente_id: 1, atributo_id: 2, descripcion: "Permiso para acceder al modulo.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 2, componente_id: 2, atributo_id: 1, descripcion: "Permiso del botón nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 2, componente_id: 3, atributo_id: 1, descripcion: "Permiso del botón registrar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 2, componente_id: 4, atributo_id: 1, descripcion: "Permiso del botón editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 2, componente_id: 5, atributo_id: 1, descripcion: "Permiso del botón eliminar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 2, componente_id: 6, atributo_id: 1, descripcion: "Permiso del botón activar/inactivar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 2, componente_id: 9, atributo_id: 1, descripcion: "Permiso del botón descarga.", estado: "A", user_created_id: 1, user_updated_id: nil},

#   {opcion_id: 3, componente_id: 17, atributo_id: 3, descripcion: "Permiso para ver la opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 3, componente_id: 1, atributo_id: 2, descripcion: "Permiso para acceder al modulo.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 3, componente_id: 2, atributo_id: 1, descripcion: "Permiso del botón nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 3, componente_id: 3, atributo_id: 1, descripcion: "Permiso del botón registrar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 3, componente_id: 4, atributo_id: 1, descripcion: "Permiso del botón editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 3, componente_id: 5, atributo_id: 1, descripcion: "Permiso del botón eliminar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 3, componente_id: 6, atributo_id: 1, descripcion: "Permiso del botón activar/inactivar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 3, componente_id: 7, atributo_id: 1, descripcion: "Permiso del botón registrar desde un modal.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 3, componente_id: 8, atributo_id: 1, descripcion: "Permiso del botón modulo carga masiva.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 3, componente_id: 9, atributo_id: 1, descripcion: "Permiso del botón descarga.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 3, componente_id: 10, atributo_id: 1, descripcion: "Permiso del botón carga masiva.", estado: "A", user_created_id: 1, user_updated_id: nil},

#   {opcion_id: 4, componente_id: 18, atributo_id: 3, descripcion: "Permiso para ver la opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 4, componente_id: 1, atributo_id: 2, descripcion: "Permiso para acceder al modulo.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 4, componente_id: 2, atributo_id: 1, descripcion: "Permiso del botón nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 4, componente_id: 3, atributo_id: 1, descripcion: "Permiso del botón registrar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 4, componente_id: 4, atributo_id: 1, descripcion: "Permiso del botón editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 4, componente_id: 5, atributo_id: 1, descripcion: "Permiso del botón eliminar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 4, componente_id: 6, atributo_id: 1, descripcion: "Permiso del botón activar/inactivar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 4, componente_id: 7, atributo_id: 1, descripcion: "Permiso del botón registrar desde un modal.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 4, componente_id: 8, atributo_id: 1, descripcion: "Permiso del botón modulo carga masiva.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 4, componente_id: 9, atributo_id: 1, descripcion: "Permiso del botón descarga.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 4, componente_id: 10, atributo_id: 1, descripcion: "Permiso del botón carga masiva.", estado: "A", user_created_id: 1, user_updated_id: nil},

#   {opcion_id: 5, componente_id: 19, atributo_id: 3, descripcion: "Permiso para ver la opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 5, componente_id: 1, atributo_id: 2, descripcion: "Permiso para acceder al modulo.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 5, componente_id: 2, atributo_id: 1, descripcion: "Permiso del botón nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 5, componente_id: 3, atributo_id: 1, descripcion: "Permiso del botón registrar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 5, componente_id: 4, atributo_id: 1, descripcion: "Permiso del botón editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 5, componente_id: 5, atributo_id: 1, descripcion: "Permiso del botón eliminar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 5, componente_id: 6, atributo_id: 1, descripcion: "Permiso del botón activar/inactivar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 5, componente_id: 9, atributo_id: 1, descripcion: "Permiso del botón descarga.", estado: "A", user_created_id: 1, user_updated_id: nil},

#   {opcion_id: 6, componente_id: 20, atributo_id: 3, descripcion: "Permiso para ver la opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 6, componente_id: 1, atributo_id: 2, descripcion: "Permiso para acceder al modulo.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 6, componente_id: 2, atributo_id: 1, descripcion: "Permiso del botón nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 6, componente_id: 3, atributo_id: 1, descripcion: "Permiso del botón registrar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 6, componente_id: 4, atributo_id: 1, descripcion: "Permiso del botón editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 6, componente_id: 5, atributo_id: 1, descripcion: "Permiso del botón eliminar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 6, componente_id: 6, atributo_id: 1, descripcion: "Permiso del botón activar/inactivar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 6, componente_id: 9, atributo_id: 1, descripcion: "Permiso del botón descarga.", estado: "A", user_created_id: 1, user_updated_id: nil},

#   {opcion_id: 7, componente_id: 21, atributo_id: 3, descripcion: "Permiso para ver la opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 7, componente_id: 1, atributo_id: 2, descripcion: "Permiso para acceder al modulo.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 7, componente_id: 2, atributo_id: 1, descripcion: "Permiso del botón nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 7, componente_id: 3, atributo_id: 1, descripcion: "Permiso del botón registrar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 7, componente_id: 4, atributo_id: 1, descripcion: "Permiso del botón editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 7, componente_id: 5, atributo_id: 1, descripcion: "Permiso del botón eliminar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 7, componente_id: 6, atributo_id: 1, descripcion: "Permiso del botón activar/inactivar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 7, componente_id: 7, atributo_id: 1, descripcion: "Permiso del botón registrar desde un modal.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 7, componente_id: 8, atributo_id: 1, descripcion: "Permiso del botón modulo carga masiva.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 7, componente_id: 9, atributo_id: 1, descripcion: "Permiso del botón descarga.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 7, componente_id: 10, atributo_id: 1, descripcion: "Permiso del botón carga masiva.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 7, componente_id: 14, atributo_id: 1, descripcion: "Permiso del botón filtro de parametros.", estado: "A", user_created_id: 1, user_updated_id: nil},

#   {opcion_id: 8, componente_id: 22, atributo_id: 3, descripcion: "Permiso para ver la opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 8, componente_id: 1, atributo_id: 2, descripcion: "Permiso para acceder al modulo.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 8, componente_id: 2, atributo_id: 1, descripcion: "Permiso del botón nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 8, componente_id: 3, atributo_id: 1, descripcion: "Permiso del botón registrar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 8, componente_id: 4, atributo_id: 1, descripcion: "Permiso del botón editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 8, componente_id: 5, atributo_id: 1, descripcion: "Permiso del botón eliminar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 8, componente_id: 6, atributo_id: 1, descripcion: "Permiso del botón activar/inactivar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 8, componente_id: 9, atributo_id: 1, descripcion: "Permiso del botón descarga.", estado: "A", user_created_id: 1, user_updated_id: nil},

#   {opcion_id: 9, componente_id: 23, atributo_id: 3, descripcion: "Permiso para ver la opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 9, componente_id: 1, atributo_id: 2, descripcion: "Permiso para acceder al modulo.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 9, componente_id: 2, atributo_id: 1, descripcion: "Permiso del botón nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 9, componente_id: 3, atributo_id: 1, descripcion: "Permiso del botón registrar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 9, componente_id: 4, atributo_id: 1, descripcion: "Permiso del botón editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 9, componente_id: 5, atributo_id: 1, descripcion: "Permiso del botón eliminar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 9, componente_id: 6, atributo_id: 1, descripcion: "Permiso del botón activar/inactivar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 9, componente_id: 9, atributo_id: 1, descripcion: "Permiso del botón descarga.", estado: "A", user_created_id: 1, user_updated_id: nil},

#   {opcion_id: 10, componente_id: 24, atributo_id: 3, descripcion: "Permiso para ver la opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 10, componente_id: 1, atributo_id: 2, descripcion: "Permiso para acceder al modulo.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 10, componente_id: 2, atributo_id: 1, descripcion: "Permiso del botón nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 10, componente_id: 3, atributo_id: 1, descripcion: "Permiso del botón registrar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 10, componente_id: 4, atributo_id: 1, descripcion: "Permiso del botón editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 10, componente_id: 5, atributo_id: 1, descripcion: "Permiso del botón eliminar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 10, componente_id: 6, atributo_id: 1, descripcion: "Permiso del botón activar/inactivar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 10, componente_id: 9, atributo_id: 1, descripcion: "Permiso del botón descarga.", estado: "A", user_created_id: 1, user_updated_id: nil},

#   {opcion_id: 11, componente_id: 25, atributo_id: 3, descripcion: "Permiso para ver la opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 11, componente_id: 1, atributo_id: 2, descripcion: "Permiso para acceder al modulo.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 11, componente_id: 2, atributo_id: 1, descripcion: "Permiso del botón nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 11, componente_id: 3, atributo_id: 1, descripcion: "Permiso del botón registrar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 11, componente_id: 4, atributo_id: 1, descripcion: "Permiso del botón editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 11, componente_id: 5, atributo_id: 1, descripcion: "Permiso del botón eliminar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 11, componente_id: 6, atributo_id: 1, descripcion: "Permiso del botón activar/inactivar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 11, componente_id: 9, atributo_id: 1, descripcion: "Permiso del botón descarga.", estado: "A", user_created_id: 1, user_updated_id: nil},

#   {opcion_id: 12, componente_id: 26, atributo_id: 3, descripcion: "Permiso para ver la opción en el Sidebar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 12, componente_id: 1, atributo_id: 2, descripcion: "Permiso para acceder al modulo.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 12, componente_id: 2, atributo_id: 1, descripcion: "Permiso del botón nuevo registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 12, componente_id: 3, atributo_id: 1, descripcion: "Permiso del botón registrar.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 12, componente_id: 4, atributo_id: 1, descripcion: "Permiso del botón editar un registro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 12, componente_id: 5, atributo_id: 1, descripcion: "Permiso del botón eliminar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 12, componente_id: 6, atributo_id: 1, descripcion: "Permiso del botón activar/inactivar un regitro.", estado: "A", user_created_id: 1, user_updated_id: nil},
#   {opcion_id: 12, componente_id: 9, atributo_id: 1, descripcion: "Permiso del botón descarga.", estado: "A", user_created_id: 1, user_updated_id: nil}
# ])

# PersonaEmpresaFormulario.create!([
#   {personas_area_id: 1, opcion_ca_id: 1, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 2, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 3, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 4, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 5, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 6, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 7, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 8, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 9, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 10, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 11, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 12, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 13, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 14, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 15, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 16, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 17, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 18, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 19, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 20, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil},
#   {personas_area_id: 1, opcion_ca_id: 21, descripcion: "PERFIL", estado: "A", user_created_id: nil, user_updated_id: nil}
# ])
