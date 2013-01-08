class PasSecuritiesController < ApplicationController
  # GET /pas_securities
  # GET /pas_securities.json
  layout "rebalancegroup" , :except => [:new]

  def index
    @pas_securities = PasSecurity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pas_securities }
    end
  end

  # GET /pas_securities/1
  # GET /pas_securities/1.json
  def show
    @pas_security = PasSecurity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pas_security }
    end
  end

  # GET /pas_securities/new
  # GET /pas_securities/new.json
  def new

    @pas_security = PasSecurity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pas_security }
    end
  end

  # GET /pas_securities/1/edit
  def edit
    @pas_security = PasSecurity.find(params[:id])
  end

  # POST /pas_securities
  # POST /pas_securities.json
  def create
    @pas_security = PasSecurity.new(params[:pas_security])

    respond_to do |format|
      if @pas_security.save
        format.html { redirect_to @pas_security, notice: 'Pas security was successfully created.' }
        format.json { render json: @pas_security, status: :created, location: @pas_security }
      else
        format.html { render action: "new" }
        format.json { render json: @pas_security.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pas_securities/1
  # PUT /pas_securities/1.json
  def update
    @pas_security = PasSecurity.find(params[:id])

    respond_to do |format|
      if @pas_security.update_attributes(params[:pas_security])
        format.html { redirect_to @pas_security, notice: 'Pas security was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pas_security.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pas_securities/1
  # DELETE /pas_securities/1.json
  def destroy
    @pas_security = PasSecurity.find(params[:id])
    @pas_security.destroy

    respond_to do |format|
      format.html { redirect_to pas_securities_url }
      format.json { head :no_content }
    end
  end

  def get_securities_data

    # require 'rexml/document'

    @pas_security = PasSecurity.all

    @strstart = "<Grid><Body><B>"

    @strsend = "</B></Body></Grid>"

    @str = ""

=begin
    <Header N="Security Name" A1="Large Cap." A2="Medium Cap." A3="Non-US Equity" A4="Bond" A5="Cash"/>
=end

    @pas_security.each do |s|
      @str = @str + "<I ID='#{s.security_id}' N ='#{s.security_name}' A1='#{s.large_cap}' A2='#{s.mid_cap}' A3='#{s.nonus_equity}' A2='#{s.bond}' A2='#{s.cash}'/>"
    end

    @str = @strstart + @str +@strsend

    render :text => @str



    #redirect_to "http://www.163.com"
    #render  :layout=>"false"

  end
end
