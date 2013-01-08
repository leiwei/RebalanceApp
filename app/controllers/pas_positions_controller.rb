class PasPositionsController < ApplicationController
  # GET /pas_positions
  # GET /pas_positions.json
  layout "rebalancegroup"
  def index
    @pas_positions = PasPosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pas_positions }
    end
  end

  # GET /pas_positions/1
  # GET /pas_positions/1.json
  def show
    @pas_position = PasPosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pas_position }
    end
  end

  # GET /pas_positions/new
  # GET /pas_positions/new.json
  def new
    @pas_position = PasPosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pas_position }
    end
  end

  # GET /pas_positions/1/edit
  def edit
    @pas_position = PasPosition.find(params[:id])
  end

  # POST /pas_positions
  # POST /pas_positions.json
  def create
    @pas_position = PasPosition.new(params[:pas_position])

    respond_to do |format|
      if @pas_position.save
        format.html { redirect_to @pas_position, notice: 'Pas position was successfully created.' }
        format.json { render json: @pas_position, status: :created, location: @pas_position }
      else
        format.html { render action: "new" }
        format.json { render json: @pas_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pas_positions/1
  # PUT /pas_positions/1.json
  def update
    @pas_position = PasPosition.find(params[:id])

    respond_to do |format|
      if @pas_position.update_attributes(params[:pas_position])
        format.html { redirect_to @pas_position, notice: 'Pas position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pas_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pas_positions/1
  # DELETE /pas_positions/1.json
  def destroy
    @pas_position = PasPosition.find(params[:id])
    @pas_position.destroy

    respond_to do |format|
      format.html { redirect_to pas_positions_url }
      format.json { head :no_content }
    end
  end
end
