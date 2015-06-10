class RelationshipsController < ApplicationController
  before_action :set_relationship, only: [:show, :edit, :update, :destroy]

  def index
    @relationships = Relationship.all
  end

  def show
    @guy = Guy.find(@relationship.guy_id)
    @gal = Gal.find(@relationship.gal_id)
  end

  def new
    @relationship = Relationship.new
  end

  def edit
  end

  def create
    @relationship = Relationship.new(relationship_params)

    respond_to do |format|
      if @relationship.save
        format.html { redirect_to @relationship, notice: 'Relationship was successfully recorded.' }
        format.json { render :show, status: :created, location: @relationship }
      else
        format.html { render :new }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @relationship.update(relationship_params)
        format.html { redirect_to @relationship, notice: 'Relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @relationship }
      else
        format.html { render :edit }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @relationship.destroy
    respond_to do |format|
      format.html { redirect_to relationships_url, notice: 'Relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_relationship
    @relationship = Relationship.find(params[:id])
  end

  def relationship_params
    params.require(:relationship).permit(:id, :guy_id, :gal_id, :first_date, :next_date)
  end
end
