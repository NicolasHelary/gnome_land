class GnomesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_gnome, only: [:show, :edit, :update, :destroy]

  def index
    @gnomes = Gnome.all
  end

  def show
  end

  def new
    @gnome = Gnome.new
  end

  def create
    @gnome = Gnome.new(gnome_params)
    @gnome.user = current_user
    if @gnome.save
      redirect_to gnomes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @gnome.update(gnome_params)
    redirect_to gnome_path(@gnome)
  end

  def destroy
    @gnome.destroy
    redirect_to gnomes_path
  end

  private

  def gnome_params
    params.require(:gnome).permit(:name, :description, :price, :photo)
  end

  def set_gnome
    @gnome = Gnome.find(params[:id])
  end
end
