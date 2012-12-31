class ArmazensController < ApplicationController
  
  helper_method :sort_column, :sort_direction
  
  def index
    @armazens = Armazem.order(sort_column + " " + sort_direction)
  end

  def show
    @armazem = Armazem.find(params[:id])
  end

  def new
    @armazem = Armazem.new
  end

  # GET /armazens/1/edit
  def edit
    @armazem = Armazem.find(params[:id])
  end

  def create
    @armazem = Armazem.new(params[:armazem])
    
    if @armazem.save
      redirect_to @armazem, notice: 'Armazem was successfully created.' 
    else
      render action: "new"
    end

  end

  def update
    @armazem = Armazem.find(params[:id])

    if @armazem.update_attributes(params[:armazem])
      redirect_to @armazem, notice: 'Armazem was successfully updated.'
    else
      render action: "edit" 
    end

  end

  def destroy
    
    @armazem = Armazem.find_by_id(params[:id])
    
    if @armazem 
      designacao = @armazem.designacao
      @armazem.destroy
    
      flash[:success] = t('flash.actions.destroy.notice', :genenero => 'o', :objecto => 'armazem', :designacao => designacao)
    else
      flash[:error] = t('flash.actions.destroy.error', :genenero => 'o', :objecto => 'armazem')
    end

    redirect_to armazens_url

  end
  
  private
  
  def sort_column
      Armazem.column_names.include?(params[:sort]) ? params[:sort] : "designacao"
  end
  
  def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end  
  
end
