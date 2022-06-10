class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def new
    @reservation = Reservation.new
    @gnome = Gnome.find(params[:gnome_id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @gnome = Gnome.find(params[:gnome_id])
    @reservation.gnome = @gnome
    @reservation.user = current_user
    if @reservation.save

      redirect_to reservation_path(@reservation)

      redirect_to profil_path
    else
      render :new
    end
  end

  def edit ##
    @gnome = reservation.gnome
  end

  def update ##
    reservation.update(reservation_params)
    redirect_to profil_path
  end

  def destroy
    @reservation.destroy
    redirect_to profil_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
