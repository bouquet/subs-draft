class SubsController < ApplicationController
  # GET /subs
  # GET /subs.xml
  def index
    @subs = Sub.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subs }
    end
  end

  # GET /subs/1
  # GET /subs/1.xml
  def show
    @sub = Sub.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sub }
    end
  end

  # GET /subs/new
  # GET /subs/new.xml
  def new
    @sub = Sub.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sub }
    end
  end

  # GET /subs/1/edit
  def edit
    @sub = Sub.find(params[:id])
  end

  # POST /subs
  # POST /subs.xml
  def create
    @sub = Sub.new(params[:sub])

    respond_to do |format|
      if @sub.save
        format.html { redirect_to(@sub, :notice => 'Sub was successfully created.') }
        format.xml  { render :xml => @sub, :status => :created, :location => @sub }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sub.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subs/1
  # PUT /subs/1.xml
  def update
    @sub = Sub.find(params[:id])

    respond_to do |format|
      if @sub.update_attributes(params[:sub])
        format.html { redirect_to(@sub, :notice => 'Sub was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sub.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subs/1
  # DELETE /subs/1.xml
  def destroy
    @sub = Sub.find(params[:id])
    @sub.destroy

    respond_to do |format|
      format.html { redirect_to(subs_url) }
      format.xml  { head :ok }
    end
  end
end
