class RebalanceTradesController < ApplicationController
  # GET /rebalance_trades
  # GET /rebalance_trades.json
  def index
    @rebalance_trades = RebalanceTrade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rebalance_trades }
    end
  end

  # GET /rebalance_trades/1
  # GET /rebalance_trades/1.json
  def show
    @rebalance_trade = RebalanceTrade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rebalance_trade }
    end
  end

  # GET /rebalance_trades/new
  # GET /rebalance_trades/new.json
  def new
    @rebalance_trade = RebalanceTrade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rebalance_trade }
    end
  end

  # GET /rebalance_trades/1/edit
  def edit
    @rebalance_trade = RebalanceTrade.find(params[:id])
  end

  # POST /rebalance_trades
  # POST /rebalance_trades.json
  def create
    @rebalance_trade = RebalanceTrade.new(params[:rebalance_trade])

    respond_to do |format|
      if @rebalance_trade.save
        format.html { redirect_to @rebalance_trade, notice: 'Rebalance trade was successfully created.' }
        format.json { render json: @rebalance_trade, status: :created, location: @rebalance_trade }
      else
        format.html { render action: "new" }
        format.json { render json: @rebalance_trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rebalance_trades/1
  # PUT /rebalance_trades/1.json
  def update
    @rebalance_trade = RebalanceTrade.find(params[:id])

    respond_to do |format|
      if @rebalance_trade.update_attributes(params[:rebalance_trade])
        format.html { redirect_to @rebalance_trade, notice: 'Rebalance trade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rebalance_trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rebalance_trades/1
  # DELETE /rebalance_trades/1.json
  def destroy
    @rebalance_trade = RebalanceTrade.find(params[:id])
    @rebalance_trade.destroy

    respond_to do |format|
      format.html { redirect_to rebalance_trades_url }
      format.json { head :no_content }
    end
  end
end
