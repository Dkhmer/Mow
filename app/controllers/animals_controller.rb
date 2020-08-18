class AnimalsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])

  end
end

  def show
    authorize @animal
  end

  def new
    @animal = Animal.new
    authorize @animal
  end

  def edit
    authorize @animal
  end

  def create
    @animal = Animal.new(restaurant_params)
    @animal.user = current_user
    authorize @animal


    respond_to do |format|
      if @animal.save
        format.html { redirect_to @animal, notice: 'Animal was successfully created.' }
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize @animal
    respond_to do |format|
      if @animal.update(restaurant_params)
        format.html { redirect_to @animal, notice: 'Animal was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    authorize @animal
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Animal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:name).permit(:name, :specie, :age, :price, :skill, :description)
  end
end