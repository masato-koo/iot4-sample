class ValsController < ApplicationController
  # GET /vals
  # GET /vals.json
  def index
    @vals = Val.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vals }
    end
  end

  # GET /vals/1
  # GET /vals/1.json
  def show
    @val = Val.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @val }
    end
  end

  # GET /vals/new
  # GET /vals/new.json
  def new
    @val = Val.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @val }
    end
  end

  # GET /vals/1/edit
  def edit
    @val = Val.find(params[:id])
  end

  # POST /vals
  # POST /vals.json
  def create
    @val = Val.new(params[:val])

    respond_to do |format|
      if @val.save
        format.html { redirect_to @val, notice: 'Val was successfully created.' }
        format.json { render json: @val, status: :created, location: @val }
      else
        format.html { render action: "new" }
        format.json { render json: @val.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vals/1
  # PUT /vals/1.json
  def update
    @val = Val.find(params[:id])

    respond_to do |format|
      if @val.update_attributes(params[:val])
        format.html { redirect_to @val, notice: 'Val was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @val.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vals/1
  # DELETE /vals/1.json
  def destroy
    @val = Val.find(params[:id])
    @val.destroy

    respond_to do |format|
      format.html { redirect_to vals_url }
      format.json { head :no_content }
    end
  end
end
