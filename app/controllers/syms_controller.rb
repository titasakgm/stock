class SymsController < ApplicationController
  # GET /syms
  # GET /syms.json
  def index
    @syms = Sym.page(params[:page]).per(20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @syms }
    end
  end

  # GET /syms/1
  # GET /syms/1.json
  def show
    @sym = Sym.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sym }
    end
  end

  # GET /syms/new
  # GET /syms/new.json
  def new
    @sym = Sym.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sym }
    end
  end

  # GET /syms/1/edit
  def edit
    @sym = Sym.find(params[:id])
  end

  # POST /syms
  # POST /syms.json
  def create
    @sym = Sym.new(params[:sym])

    respond_to do |format|
      if @sym.save
        format.html { redirect_to @sym, notice: 'Sym was successfully created.' }
        format.json { render json: @sym, status: :created, location: @sym }
      else
        format.html { render action: "new" }
        format.json { render json: @sym.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /syms/1
  # PUT /syms/1.json
  def update
    @sym = Sym.find(params[:id])

    respond_to do |format|
      if @sym.update_attributes(params[:sym])
        format.html { redirect_to @sym, notice: 'Sym was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sym.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syms/1
  # DELETE /syms/1.json
  def destroy
    @sym = Sym.find(params[:id])
    @sym.destroy

    respond_to do |format|
      format.html { redirect_to syms_url }
      format.json { head :ok }
    end
  end
end
