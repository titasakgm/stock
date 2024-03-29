class SetclosesController < ApplicationController
  # GET /setcloses
  # GET /setcloses.json
  def index
    @setcloses = Setclose.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @setcloses }
    end
  end

  # GET /setcloses/1
  # GET /setcloses/1.json
  def show
    @setclose = Setclose.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @setclose }
    end
  end

  # GET /setcloses/new
  # GET /setcloses/new.json
  def new
    @setclose = Setclose.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @setclose }
    end
  end

  # GET /setcloses/1/edit
  def edit
    @setclose = Setclose.find(params[:id])
  end

  # POST /setcloses
  # POST /setcloses.json
  def create
    @setclose = Setclose.new(params[:setclose])

    respond_to do |format|
      if @setclose.save
        format.html { redirect_to @setclose, notice: 'Setclose was successfully created.' }
        format.json { render json: @setclose, status: :created, location: @setclose }
      else
        format.html { render action: "new" }
        format.json { render json: @setclose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /setcloses/1
  # PUT /setcloses/1.json
  def update
    @setclose = Setclose.find(params[:id])

    respond_to do |format|
      if @setclose.update_attributes(params[:setclose])
        format.html { redirect_to @setclose, notice: 'Setclose was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @setclose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setcloses/1
  # DELETE /setcloses/1.json
  def destroy
    @setclose = Setclose.find(params[:id])
    @setclose.destroy

    respond_to do |format|
      format.html { redirect_to setcloses_url }
      format.json { head :ok }
    end
  end
end
