class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR specie ILIKE :query OR city ILIKE :query"
      @animals = policy_scope(Animal).where(sql_query, query: "%#{params[:query]}%").order(created_at: :desc).geocoded

    else
      @animals = policy_scope(Animal).order(created_at: :desc).geocoded

    end
      @markers = @animals.map do |animal|
      {lng: animal.longitude, lat:animal.latitude}
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @animal = Animal.new
    authorize @animal
  end

  def edit
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    authorize @animal
    if @animal.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to @animal, notice: 'Animal was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to animals_url, notice: 'Animal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_animal
    @animal = Animal.find(params[:id])
    authorize @animal
  end

  def animal_params
    params.require(:animal).permit(:name, :specie, :description, :address, photos:[] )
  end
end
