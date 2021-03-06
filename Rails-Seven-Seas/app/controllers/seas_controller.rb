class SeasController < ApplicationController
  #define your controller actions here
  def welcome
  end
  def index
    @seas = Sea.all
  end
  def new
     @sea = Sea.new
  end
  def show
    @sea = Sea.find(params[:id])
  end
  def edit
    @sea = Sea.find(params[:id])
  end
  def create
    @sea = Sea.new(sea_params)
    @sea.save
    redirect_to action: 'show', id: @sea.id
  end
  def destroy
    @sea = Sea.find(params[:id])
    @sea.destroy
    redirect_to action: 'index'
  end
  def update
    @sea = Sea.find(params[:id])
    params.delete("_method")
    params[:has_mermaids] ||= false
    @sea.update(sea_params)
    redirect_to action: 'show', id: @sea.id
  end

  #   post '/seas', to: "seas#show"
  #   # patch '/seas/:id', to: "seas#show"
  #   delete '/seas/:id', to: "seas#index"

  # post "/seas" do
  #   @sea = Sea.new(params)
  #   @sea.save
  #   redirect to "/seas/#{@sea.id}"
  # end

# patch "/seas/:id" do
#     @sea = Sea.find(params[:id])
#     params.delete("_method")
#     params[:has_mermaids] ||= false
#     @sea.update(params)
#     redirect to "/seas/#{@sea.id}"
#   end
  
  # delete "/seas/:id" do
  #   @sea = Sea.find(params[:id])
  #   @sea.destroy
  #   redirect to "/seas"
  # end
  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end
  # In controller actions, use this private method to access sea params from forms.
end
