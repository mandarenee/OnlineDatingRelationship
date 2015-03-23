class GalsController < ApplicationController
  before_action :set_gal, only: [:show, :edit, :update, :destroy]

  def index
    @gals = Gal.all
  end

  def show
    @relationships = @gal.relationships
  end

  def new
    @gal = Gal.new
  end

  def edit
  end

  def create
    @gal = Gal.new(gal_params)

    respond_to do |format|
      if @gal.save
        format.html { redirect_to @gal, notice: 'Gal was successfully created.' }
        format.json { render :show, status: :created, location: @gal }
      else
        format.html { render :new }
        format.json { render json: @gal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @gal.update(gal_params)
        format.html { redirect_to @gal, notice: 'Gal was successfully updated.' }
        format.json { render :show, status: :ok, location: @gal }
      else
        format.html { render :edit }
        format.json { render json: @gal.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @gal.destroy
    respond_to do |format|
      format.html { redirect_to gals_url, notice: 'Gal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_gal
    @gal = Gal.find(params[:id])
  end

  def gal_params
    params.require(:gal).permit(:id, :name, :worst_bad_date)
  end
end
