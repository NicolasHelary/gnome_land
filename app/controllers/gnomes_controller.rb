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
    if @gnome.save
      redirect_to gnome_path(@gnome)
    else
      render :new
    end
  end

  def edit
    @reservation = @gnome.reservation
  end

  def update
    @gnome.update(gnome_params)
    redirect_to profil_path
  end

  def destroy
    @gnome.destroy
    redirect_to profil_path
  end

  private

  def gnome_params
    params.require(:gnome).permit(:name, :description, :photo)
  end

  def set_gnome
    @gnome = Gnome.find(params[:id])
  end
end
