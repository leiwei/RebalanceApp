class RebalanceRefsController < ApplicationController
  layout "rebalancegroup"
  # GET /rebalance_refs
  # GET /rebalance_refs.json
  def index
    @rebalance_refs = RebalanceRef.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rebalance_refs }
    end
  end

  # GET /rebalance_refs/1
  # GET /rebalance_refs/1.json
  def show
    @rebalance_ref = RebalanceRef.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rebalance_ref }
    end
  end

  # GET /rebalance_refs/new
  # GET /rebalance_refs/new.json
  def new
    @rebalance_ref = RebalanceRef.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rebalance_ref }
    end
  end

  # GET /rebalance_refs/1/edit
  def edit
    @rebalance_ref = RebalanceRef.find(params[:id])
  end

  # POST /rebalance_refs
  # POST /rebalance_refs.json
  def create
    @rebalance_ref = RebalanceRef.new(params[:rebalance_ref])

    respond_to do |format|
      if @rebalance_ref.save
        format.html { redirect_to @rebalance_ref, notice: 'Rebalance ref was successfully created.' }
        format.json { render json: @rebalance_ref, status: :created, location: @rebalance_ref }
      else
        format.html { render action: "new" }
        format.json { render json: @rebalance_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rebalance_refs/1
  # PUT /rebalance_refs/1.json
  def update
    @rebalance_ref = RebalanceRef.find(params[:id])

    respond_to do |format|
      if @rebalance_ref.update_attributes(params[:rebalance_ref])
        format.html { redirect_to @rebalance_ref, notice: 'Rebalance ref was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rebalance_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rebalance_refs/1
  # DELETE /rebalance_refs/1.json
  def destroy
    @rebalance_ref = RebalanceRef.find(params[:id])
    @rebalance_ref.destroy

    respond_to do |format|
      format.html { redirect_to rebalance_refs_url }
      format.json { head :no_content }
    end
  end
end
