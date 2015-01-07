class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]
  #before_action :require_user
  # GET /items
  # GET /items.json
  def index
    @items = Item.where(user_id: current_user.id).includes(:colors).includes(:events).includes(:types).includes(:retailers)

  end

  # GET /items/1
  # GET /items/1.json
  def show


  end

  # GET /items/new
  def new
    @item = current_user.items.new
    @color = Color.all
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create

    @item = Item.new(item_params)
    @item.colors = Color.where(id: params[:item][:itemcolors])
    @item.events = Event.where(id: params[:item][:itemevents])
    @item.brands = Brand.where(id: params[:item][:itembrands])
    @item.retailers = Retailer.where(id: params[:item][:itemretailers])
    @item.types = Type.where(id: params[:item][:itemtypes])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update

   
   @item.colors = Color.where(id: params[:item][:itemcolors])
   @item.events = Event.where(id: params[:item][:itemevents])
   @item.brands = Brand.where(id: params[:item][:itembrands])
   @item.retailers = Retailer.where(id: params[:item][:itemretailers])
   @item.types = Type.where(id: params[:item][:itemtypes])

   respond_to do |format|
    if @item.update(item_params)
      format.html { redirect_to @item, notice: 'Item was successfully updated.' }
      format.json { render :show, status: :ok, location: @item }
    else
      format.html { render :edit }
      format.json { render json: @item.errors, status: :unprocessable_entity }
    end
  end
end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
     params.require(:item).permit(:name, :cost, :image, :fit, :season, :notes, :description, :user_id
       )
   end


 end
























