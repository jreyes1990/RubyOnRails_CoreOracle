class OpcionCasController < ApplicationController
  before_action :set_opcion_ca, only: %i[ show edit update destroy ]

  # GET /opcion_cas or /opcion_cas.json
  def index
    respond_to do |format|    
      format.html
      format.json { render json: OpcionCaDatatable.new(params, view_context: view_context) }
    end
  end

  # GET /opcion_cas/1 or /opcion_cas/1.json
  def show
  end

  # GET /opcion_cas/new
  def new
    @opcion_ca = OpcionCa.new
  end

  # GET /opcion_cas/1/edit
  def edit
  end

  # POST /opcion_cas or /opcion_cas.json
  def create
    @opcion_ca = OpcionCa.new(opcion_ca_params)
    @opcion_ca.user_created_id = current_user.id
    @opcion_ca.estado = "A"

    respond_to do |format|
      if @opcion_ca.save
        format.html { redirect_to opcion_cas_url, notice: "El Permiso Formulario <strong >#{@opcion_ca.opcion.nombre.capitalize} - #{@opcion_ca.componente.nombre.capitalize} - #{@opcion_ca.atributo.nombre.capitalize}</strong> se ha creado correctamente.".html_safe }
        format.json { render :show, status: :created, location: @opcion_ca }
      else
        format.html { render :new, status: :unprocessable_entity, alert: "Ocurrio un error al crear el Permiso Formulario, Verifique!!.." }
        format.json { render json: @opcion_ca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opcion_cas/1 or /opcion_cas/1.json
  def update
    @opcion_ca.user_updated_id = current_user.id

    respond_to do |format|
      if @opcion_ca.update(opcion_ca_params)
        format.html { redirect_to opcion_cas_url, notice: "El Permiso Formulario <strong >#{@opcion_ca.opcion.nombre.capitalize} - #{@opcion_ca.componente.nombre.capitalize} - #{@opcion_ca.atributo.nombre.capitalize}</strong> se ha actualizado correctamente.".html_safe }
        format.json { render :show, status: :ok, location: @opcion_ca }
      else
        format.html { render :edit, status: :unprocessable_entity, alert: "Ocurrio un error al actualizar el Permiso Formulario, Verifique!!.." }
        format.json { render json: @opcion_ca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opcion_cas/1 or /opcion_cas/1.json
  def destroy
    @opcion_ca.destroy

    respond_to do |format|
      format.html { redirect_to opcion_cas_url, notice: "El Permiso Formulario <strong >#{@opcion_ca.opcion.nombre.capitalize} - #{@opcion_ca.componente.nombre.capitalize} - #{@opcion_ca.atributo.nombre.capitalize}</strong> se ha eliminado correctamente.".html_safe }
      format.json { head :no_content }
    end
  end

  def inactivar_opcion_ca
    @opcion_ca = OpcionCa.find(params[:id])
    @opcion_ca.user_updated_id = current_user.id
    @opcion_ca.estado = "I"

    respond_to do |format|
      if @opcion_ca.save
        format.html { redirect_to opcion_cas_url, notice: "El Permiso Formulario <strong >#{@opcion_ca.opcion.nombre.capitalize} - #{@opcion_ca.componente.nombre.capitalize} - #{@opcion_ca.atributo.nombre.capitalize}</strong> ha sido Inactivo.".html_safe }
        format.json { render :show, status: :created, location: @opcion_ca }
      else
        format.html { redirect_to opcion_cas_url, alert: "Ocurrio un error al inactivar el Permiso Formulario, Verifique!!.." }
        format.json { render json: @opcion_ca.errors, status: :unprocessable_entity }
      end
    end
  end

  def activar_opcion_ca
    @opcion_ca = OpcionCa.find(params[:id])
    @opcion_ca.user_updated_id = current_user.id
    @opcion_ca.estado = "A"

    respond_to do |format|
      if @opcion_ca.save
        format.html { redirect_to opcion_cas_url, notice: "El Permiso Formulario <strong >#{@opcion_ca.opcion.nombre.capitalize} - #{@opcion_ca.componente.nombre.capitalize} - #{@opcion_ca.atributo.nombre.capitalize}</strong> ha sido Activo.".html_safe }
        format.json { render :show, status: :created, location: @opcion_ca }
      else
        format.html { redirect_to opcion_cas_url, alert: "Ocurrio un error al activar el Permiso Formulario, Verifique!!.." }
        format.json { render json: @opcion_ca.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opcion_ca
      @opcion_ca = OpcionCa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def opcion_ca_params
      params.require(:opcion_ca).permit(:descripcion, :user_created_id, :user_updated_id, :estado, :opcion_id, :componente_id, :atributo_id)
    end
end
