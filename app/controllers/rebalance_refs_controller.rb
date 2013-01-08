class RebalanceRefsController < ApplicationController
  layout "rebalancegroup"
  # GET /rebalance_refs
  # GET /rebalance_refs.json
  def index
   # @rebalance_refs = RebalanceRef.all
     @rebalancegroups = Rebalancegroup.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rebalancegroups }
    end
  end

  # GET /rebalance_refs/1
  # GET /rebalance_refs/1.json
  def show
   # @rebalance_ref = RebalanceRef.find(params[:id])
   # @rebalance_ref = RebalanceRef.find_by_group_id("86422710-de6a-4424-aa86-8f47bd31e1aa")
    @rebalance_ref = RebalanceRef.find_by_group_id(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rebalance_ref }
    end
  end

  def lsbygroupid
  #  @refs = RebalanceRef.find_all_by_group_id("86422710-de6a-4424-aa86-8f47bd31e1aa")
    #@refs = RebalanceRef.find_all_by_group_id(params[:id])
    @refs = RebalanceRef.find_by_sql("SELECT R.id, G.group_id,ACCT.acct_id, G.group_name,ACCT.acct_name,ACCT.acct_type FROM rebalancegroups G INNER JOIN rebalance_refs R ON G.group_id='#{params[:id]}' and G.group_id=R.group_id INNER JOIN pas_accounts ACCT ON R.acc_id = ACCT.acct_id")
    @accts = PasAccount.all;
    @group_id = params[:id]
    respond_to do |format|
      format.html # lsbygroupid.html.erb
      format.json { render json: @refs }
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


    @rebalance_ref.group_id = params[:group_id]
    @rebalance_ref.acc_id =params[:acct_id]
    @rebalance_ref.client_id = UUIDTools::UUID.random_create.to_s

    if  @rebalance_ref.save
      render :text => "success"
    end

=begin
    @rebalance_ref.group_id = "86422710-de6a-4424-aa86-8f47bd31e1aa"
    @rebalance_ref.acc_id = UUIDTools::UUID.random_create.to_s
    @rebalance_ref.client_id = UUIDTools::UUID.random_create.to_s
    respond_to do |format|
      if @rebalance_ref.save
        format.html { redirect_to @rebalance_ref, notice: 'Rebalance ref was successfully created.' }
        format.json { render json: @rebalance_ref, status: :created, location: @rebalance_ref }
      else
        format.html { render action: "new" }
        format.json { render json: @rebalance_ref.errors, status: :unprocessable_entity }
      end
    end
=end
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
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
end
