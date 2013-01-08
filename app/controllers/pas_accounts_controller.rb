class PasAccountsController < ApplicationController
  layout "rebalancegroup"
  # GET /pas_accounts
  # GET /pas_accounts.json
  def index
    @pas_accounts = PasAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pas_accounts }
    end
  end

  # GET /pas_accounts/1
  # GET /pas_accounts/1.json
  def show
    @pas_account = PasAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pas_account }
    end
  end

  # GET /pas_accounts/new
  # GET /pas_accounts/new.json
  def new
    @pas_account = PasAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pas_account }
    end
  end

  # GET /pas_accounts/1/edit
  def edit
    @pas_account = PasAccount.find(params[:id])
  end

  # POST /pas_accounts
  # POST /pas_accounts.json
  def create
    @pas_account = PasAccount.new(params[:pas_account])
    @pas_account.acct_name = params[:acct_name]
    @pas_account.acct_type = params[:acct_id]
    respond_to do |format|
      if @pas_account.save
          format.html { redirect_to pas_accounts_url }
          format.json { head :no_content }
      else
        format.html { render action: "new" }
        format.json { render json: @pas_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pas_accounts/1
  # PUT /pas_accounts/1.json
  def update
    @pas_account = PasAccount.find(params[:id])

    respond_to do |format|
      if @pas_account.update_attributes(params[:pas_account])
        format.html { redirect_to @pas_account, notice: 'Pas account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pas_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pas_accounts/1
  # DELETE /pas_accounts/1.json
  def destroy
    @pas_account = PasAccount.find(params[:id])
    @pas_account.destroy

    respond_to do |format|
      format.html { redirect_to pas_accounts_url }
      format.json { head :no_content }
    end
  end
end
