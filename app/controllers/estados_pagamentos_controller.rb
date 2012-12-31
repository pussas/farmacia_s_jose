class EstadosPagamentosController < ApplicationController
  # GET /estados_pagamentos
  # GET /estados_pagamentos.json
  def index
    @estados_pagamentos = EstadosPagamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estados_pagamentos }
    end
  end

  # GET /estados_pagamentos/1
  # GET /estados_pagamentos/1.json
  def show
    @estados_pagamento = EstadosPagamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estados_pagamento }
    end
  end

  # GET /estados_pagamentos/new
  # GET /estados_pagamentos/new.json
  def new
    @estados_pagamento = EstadosPagamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estados_pagamento }
    end
  end

  # GET /estados_pagamentos/1/edit
  def edit
    @estados_pagamento = EstadosPagamento.find(params[:id])
  end

  # POST /estados_pagamentos
  # POST /estados_pagamentos.json
  def create
    @estados_pagamento = EstadosPagamento.new(params[:estados_pagamento])

    respond_to do |format|
      if @estados_pagamento.save
        format.html { redirect_to @estados_pagamento, notice: 'Estados pagamento was successfully created.' }
        format.json { render json: @estados_pagamento, status: :created, location: @estados_pagamento }
      else
        format.html { render action: "new" }
        format.json { render json: @estados_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estados_pagamentos/1
  # PUT /estados_pagamentos/1.json
  def update
    @estados_pagamento = EstadosPagamento.find(params[:id])

    respond_to do |format|
      if @estados_pagamento.update_attributes(params[:estados_pagamento])
        format.html { redirect_to @estados_pagamento, notice: 'Estados pagamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estados_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estados_pagamentos/1
  # DELETE /estados_pagamentos/1.json
  def destroy
    @estados_pagamento = EstadosPagamento.find(params[:id])
    @estados_pagamento.destroy

    respond_to do |format|
      format.html { redirect_to estados_pagamentos_url }
      format.json { head :no_content }
    end
  end
end
