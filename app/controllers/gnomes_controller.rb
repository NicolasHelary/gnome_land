class GnomesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @gnomes = Gnome.all
  end
end
