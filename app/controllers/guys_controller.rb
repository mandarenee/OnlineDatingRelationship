class GuysController < ApplicationController
  before_action :set_guy, only: [:show, :edit, :update, :destroy]

  def index
    @guys = Guy.all
  end

  def show
  end

  def new
    @guy = Guy.new
  end

  def edit
  end

  def create
    @guy = Guy.new(guy_params)

    respond_to do |format|
      if @guy.save
        format.html { redirect_to @guy, notice: 'Guy was successfully created.' }
        format.json { render :show, status: :created, location: @guy }
      else
        format.html { render :new }
        format.json { render json: @guy.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @guy.update(guy_params)
        format.html { redirect_to @guy, notice: 'Guy was successfully updated.' }
        format.json { render :show, status: :ok, location: @guy }
      else
        format.html { render :edit }
        format.json { render json: @guy.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @guy.destroy
    respond_to do |format|
      format.html { redirect_to guys_url, notice: 'Guy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_guy
    @guy = Guy.find(params[:id])
  end

  def guy_params
    params.require(:guy).permit(:id, :name, :number_of_emails_sent)
  end
end
