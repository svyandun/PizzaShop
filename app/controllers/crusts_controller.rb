class CrustsController < ApplicationController
  # GET /crusts
  # GET /crusts.json
  def index
    @crusts = Crust.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crusts }
    end
  end

  # GET /crusts/1
  # GET /crusts/1.json
  def show
    @crust = Crust.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crust }
    end
  end

  # GET /crusts/new
  # GET /crusts/new.json
  def new
    @crust = Crust.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crust }
    end
  end

  # GET /crusts/1/edit
  def edit
    @crust = Crust.find(params[:id])
  end

  # POST /crusts
  # POST /crusts.json
  def create
    @crust = Crust.new(params[:crust])

    respond_to do |format|
      if @crust.save
        format.html { redirect_to @crust, notice: 'Crust was successfully created.' }
        format.json { render json: @crust, status: :created, location: @crust }
      else
        format.html { render action: "new" }
        format.json { render json: @crust.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crusts/1
  # PUT /crusts/1.json
  def update
    @crust = Crust.find(params[:id])

    respond_to do |format|
      if @crust.update_attributes(params[:crust])
        format.html { redirect_to @crust, notice: 'Crust was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crust.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crusts/1
  # DELETE /crusts/1.json
  def destroy
    @crust = Crust.find(params[:id])
    @crust.destroy

    respond_to do |format|
      format.html { redirect_to crusts_url }
      format.json { head :no_content }
    end
  end
end
