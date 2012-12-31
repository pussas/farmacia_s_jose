class EstadosEncomendasController < ApplicationController
  # GET /estados_encomendas
  # GET /estados_encomendas.json
  def index
    @estados_encomendas = EstadosEncomenda.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estados_encomendas }
    end
  end

  # GET /estados_encomendas/1
  # GET /estados_encomendas/1.json
  def show
    @estados_encomenda = EstadosEncomenda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estados_encomenda }
    end
  end

  # GET /estados_encomendas/new
  # GET /estados_encomendas/new.json
  def new
    @estados_encomenda = EstadosEncomenda.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estados_encomenda }
    end
  end

  # GET /estados_encomendas/1/edit
  def edit
    @estados_encomenda = EstadosEncomenda.find(params[:id])
  end

  # POST /estados_encomendas
  # POST /estados_encomendas.json
  def create
    @estados_encomenda = EstadosEncomenda.new(params[:estados_encomenda])

    respond_to do |format|
      if @estados_encomenda.save
        format.html { redirect_to @estados_encomenda, notice: 'Estados encomenda was successfully created.' }
        format.json { render json: @estados_encomenda, status: :created, location: @estados_encomenda }
      else
        format.html { render action: "new" }
        format.json { render json: @estados_encomenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estados_encomendas/1
  # PUT /estados_encomendas/1.json
  def update
    @estados_encomenda = EstadosEncomenda.find(params[:id])

    respond_to do |format|
      if @estados_encomenda.update_attributes(params[:estados_encomenda])
        format.html { redirect_to @estados_encomenda, notice: 'Estados encomenda was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estados_encomenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estados_encomendas/1
  # DELETE /estados_encomendas/1.json
  def destroy
    @estados_encomenda = EstadosEncomenda.find(params[:id])
    @estados_encomenda.destroy

    respond_to do |format|
      format.html { redirect_to estados_encomendas_url }
      format.json { head :no_content }
    end
  end
end
