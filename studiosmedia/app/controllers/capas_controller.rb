class CapasController < ApplicationController
before_filter :authenticate_admin!

  # GET /capas
  # GET /capas.json
  def index
@capas = Capa.all
@last = Capa.last
@content = @last.content
  render :layout=>'admin'
  end

  # GET /capas/1
  # GET /capas/1.json
  def show
    @capa = Capa.find(params[:id])

  render :layout=>'admin'
  end

  # GET /capas/new
  # GET /capas/new.json
  def new
    @capa = Capa.new

render :layout=>'admin'
  end

  # GET /capas/1/edit
  def edit

    @capa = Capa.find(params[:id])
	 render :layout=>'admin'
  end

  # POST /capas
  # POST /capas.json
  def create

    @capa = Capa.new(params[:capa])

    respond_to do |format|
      if @capa.save
        format.html { redirect_to @capa, notice: 'Capa was successfully created.' }
        format.json { render json: @capa, status: :created, location: @capa }
      else
        format.html { render action: "new" }
        format.json { render json: @capa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /capas/1
  # PUT /capas/1.json
  def update

    @capa = Capa.find(params[:id])

    respond_to do |format|
      if @capa.update_attributes(params[:capa])
        format.html { redirect_to @capa, notice: 'Capa was successfully updated.' }
      else
        format.html { render action: "edit" }
        format.json { render json: @capa.errors, status: :unprocessable_entity }
      end
    end
	
  end

  # DELETE /capas/1
  # DELETE /capas/1.json
  def destroy

    @capa = Capa.find(params[:id])
    @capa.destroy

    respond_to do |format|
      format.html { redirect_to capas_url }
      format.json { head :no_content }
    end
	  render :layout=>'admin'
  end
  
end
