require "time"

class RebalancegroupsController < ApplicationController
 layout "rebalancegroup"
  # GET /rebalancegroups
  # GET /rebalancegroups.json
  def index
    @rebalancegroup = Rebalancegroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rebalancegroups }
      format.xml {rendder xml: @rebalancegroups}
    end
  end

  # GET /rebalancegroups/1
  # GET /rebalancegroups/1.json
  def show
    @rebalancegroup = Rebalancegroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rebalancegroup }
    end
  end

  # GET /rebalancegroups/new
  # GET /rebalancegroups/new.json
  def new

    @rebalancegroup = Rebalancegroup.new
    #@rebalancegroup = Rebalancegroup.new( :group_id => UUIDTools::UUID.random_create.to_s,:group_name=>"aaa" )

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rebalancegroup }
    end
  end

  # GET /rebalancegroups/1/edit
  def edit
    @rebalancegroup = Rebalancegroup.find(params[:id])
  end

  # POST /rebalancegroups
  # POST /rebalancegroups.json
  def create

    @rebalancegroup = Rebalancegroup.new(params[:rebalancegroup])

    @rebalancegroup.lst_modify_at =  Time.now.strftime("%Y-%m-%d %H:%M:%S")

    @rebalancegroup.create_at =  Time.now.strftime("%Y-%m-%d %H:%M:%S")
    respond_to do |format|

      if @rebalancegroup.save

        format.html { redirect_to @rebalancegroup, notice: 'Rebalancegroup was successfully created.' }
        format.json { render json: @rebalancegroup, status: :created, location: @rebalancegroup }
      else
        format.html { render action: "new" }
        format.json { render json: @rebalancegroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rebalancegroups/1
  # PUT /rebalancegroups/1.json
  def update
    @rebalancegroup = Rebalancegroup.find(params[:id])

    @g_name = params[:g_name]
    @modify_at =  Time.now.strftime("%Y-%m-%d %H:%M:%S")
    if  @rebalancegroup.update_attributes(:group_name=>@g_name, :lst_modify_at=> @modify_at)
      render :text => @g_name+"--update success"
    end

  end

  # DELETE /rebalancegroups/1
  # DELETE /rebalancegroups/1.json
  def destroy
    @rebalancegroup = Rebalancegroup.find(params[:id])
    @name = @rebalancegroup.group_name
    if @rebalancegroup.destroy
      render :text =>"--"+@name +"--delete success"
    end
  end

  def returnxml

    # require 'rexml/document'

     @rebalancegroup = Rebalancegroup.all

     @strstart = "<Grid><Body><B>"

     @strsend = "</B></Body></Grid>"

     @str = ""

     @rebalancegroup.each do |r|
       @str = @str + "<I id ='#{r.group_id}' C='#{r.group_name}' N='#{r.note}'/>"
     end

     @str = @strstart + @str +@strsend

     render :text => @str



    #redirect_to "http://www.163.com"
     #render  :layout=>"false"

  end
end
