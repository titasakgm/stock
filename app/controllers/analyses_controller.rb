class AnalysesController < ApplicationController
  # GET /analyses
  # GET /analyses.json
  def index
    @analyses = Analyse.all.order(['date',-1],['time',-1]).page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @analyses }
    end
  end

  # GET /analyses/1
  # GET /analyses/1.json
  def show
    @analysis = Analyse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @analysis }
    end
  end

  # GET /analyses/new
  # GET /analyses/new.json
  def new
    @analysis = Analyse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @analysis }
    end
  end

  # GET /analyses/1/edit
  def edit
    @analysis = Analyse.find(params[:id])
  end

  # POST /analyses
  # POST /analyses.json
  def create
    @analysis = Analyse.new(params[:analysis])

    respond_to do |format|
      if @analysis.save
        format.html { redirect_to @analysis, notice: 'Analyse was successfully created.' }
        format.json { render json: @analysis, status: :created, location: @analysis }
      else
        format.html { render action: "new" }
        format.json { render json: @analysis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /analyses/1
  # PUT /analyses/1.json
  def update
    @analysis = Analyse.find(params[:id])

    respond_to do |format|
      if @analysis.update_attributes(params[:analysis])
        format.html { redirect_to @analysis, notice: 'Analyse was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @analysis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analyses/1
  # DELETE /analyses/1.json
  def destroy
    @analysis = Analyse.find(params[:id])
    @analysis.destroy

    respond_to do |format|
      format.html { redirect_to analyses_url }
      format.json { head :ok }
    end
  end

  def draw
    @symbol = params[:symbol]
    @date = params[:date]
    @time = params[:time]
    @setcloses = Quote.where('date' => @date,'symbol' => 'SET').order(['time',1])
    @quotes = Quote.where('date' => @date,'symbol' => @symbol).order(['time',1])
  end

end
