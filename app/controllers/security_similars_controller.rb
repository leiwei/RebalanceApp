class SecuritySimilarsController < ApplicationController
  # GET /security_similars
  # GET /security_similars.json
  def index
    @security_similars = SecuritySimilar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @security_similars }
    end
  end

  # GET /security_similars/1
  # GET /security_similars/1.json
  def show
    @security_similar = SecuritySimilar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @security_similar }
    end
  end

  # GET /security_similars/new
  # GET /security_similars/new.json
  def new
    @security_similar = SecuritySimilar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @security_similar }
    end
  end

  # GET /security_similars/1/edit
  def edit
    @security_similar = SecuritySimilar.find(params[:id])
  end

  # POST /security_similars
  # POST /security_similars.json
  def create
    @security_similar = SecuritySimilar.new(params[:security_similar])

    respond_to do |format|
      if @security_similar.save
        format.html { redirect_to @security_similar, notice: 'Security similar was successfully created.' }
        format.json { render json: @security_similar, status: :created, location: @security_similar }
      else
        format.html { render action: "new" }
        format.json { render json: @security_similar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /security_similars/1
  # PUT /security_similars/1.json
  def update
    @security_similar = SecuritySimilar.find(params[:id])

    respond_to do |format|
      if @security_similar.update_attributes(params[:security_similar])
        format.html { redirect_to @security_similar, notice: 'Security similar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @security_similar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_similars/1
  # DELETE /security_similars/1.json
  def destroy
    @security_similar = SecuritySimilar.find(params[:id])
    @security_similar.destroy

    respond_to do |format|
      format.html { redirect_to security_similars_url }
      format.json { head :no_content }
    end
  end
end
