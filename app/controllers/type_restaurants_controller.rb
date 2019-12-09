class TypeRestaurantsController < ApplicationController
  before_action :set_type_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /type_restaurants
  # GET /type_restaurants.json
  def index
    @type_restaurants = TypeRestaurant.all
  end

  # GET /type_restaurants/1
  # GET /type_restaurants/1.json
  def show
  end

  # GET /type_restaurants/new
  def new
    @type_restaurant = TypeRestaurant.new
  end

  # GET /type_restaurants/1/edit
  def edit
  end

  # POST /type_restaurants
  # POST /type_restaurants.json
  def create
    @type_restaurant = TypeRestaurant.new(type_restaurant_params)

    respond_to do |format|
      if @type_restaurant.save
        format.html { redirect_to @type_restaurant, notice: 'Type restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @type_restaurant }
      else
        format.html { render :new }
        format.json { render json: @type_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_restaurants/1
  # PATCH/PUT /type_restaurants/1.json
  def update
    respond_to do |format|
      if @type_restaurant.update(type_restaurant_params)
        format.html { redirect_to @type_restaurant, notice: 'Type restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_restaurant }
      else
        format.html { render :edit }
        format.json { render json: @type_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_restaurants/1
  # DELETE /type_restaurants/1.json
  def destroy
    @type_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to type_restaurants_url, notice: 'Type restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_restaurant
      @type_restaurant = TypeRestaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_restaurant_params
      params.require(:type_restaurant).permit(:name)
    end
end
