module ApplicationHelper
  include Utilidades
  include Permisos

  def current_user_name
    persona = Persona.where(user_id: current_user.id).first

    if !persona.nil?
      if (!persona.nombre.nil? || !persona.apellido.nil?)
        return "#{persona.nombre.upcase} #{persona.apellido.upcase}"
      else
        return current_user.email
      end
    else
      return current_user.email
    end
  end

  def is_active_action(controller)
    if params[:controller] == controller
      "collapse-item active"
    else
      "collapse-item"
    end
  end
  
  # METODOS DE ACTIVACION EN SIDEBAR - INICIO
  def is_home_active
    if params[:controller] == "home"
      "nav-item active"
    else
      "nav-item"
    end
  end

  # METODOS DE ACTIVACION EN SIDEBAR - ICONOS
  def is_active_controller_icono_titulo
    @controladores = ["font_awesomes", "codigo_colores"]
    if @controladores.include? params[:controller]
      "nav-item active"
    else
      "nav-item"
    end
  end

  def is_active_controller_icono
    @controladores = ["font_awesomes", "codigo_colores"]
    if @controladores.include? params[:controller]
      "nav-link"
    else
      "nav-link collapsed"
    end
  end

  def is_active_option_controller_icono
    @controladores = ["font_awesomes", "codigo_colores"]
    if @controladores.include? params[:controller]
      "collapse show"
    else
      "collapse"
    end
  end

  # METODOS DE ACTIVACION EN SIDEBAR - CONFIGURACIÓN SISTEMA
  def is_active_controller_sistema_titulo
    @controladores = ["usuarios","empresas","areas","personas_areas","roles","menus","opciones","menu_roles","atributos","componentes","opcion_cas"]
    if @controladores.include? params[:controller]
      "nav-item active"
    else
      "nav-item"
    end
  end

  def is_active_controller_sistema
    @controladores = ["usuarios","empresas","areas","personas_areas","roles","menus","opciones","menu_roles","atributos","componentes","opcion_cas"]
    if @controladores.include? params[:controller]
      "nav-link"
    else
      "nav-link collapsed"
    end
  end

  def is_active_option_controller_sistema
    @controladores = ["usuarios","empresas","areas","personas_areas","roles","menus","opciones","menu_roles","atributos","componentes","opcion_cas"]
    if @controladores.include? params[:controller]
      "collapse show"
    else
      "collapse"
    end
  end
end
