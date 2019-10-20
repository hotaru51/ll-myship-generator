class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def show
  end

  def new
    @ship = Ship.new(ship_name: generate_ship)
  end

  def edit
  end

  def create
    ship = Ship.new(ship_params)
    ship.save!
    redirect_to ships_path
  end

  private
  def generate_ship
    otonokizaka = %w(まき りん ぱな ほの こと うみ のぞ えり にこ)
    uranohoshi  = %w(るび まる よし ちか よう りこ かな まり だい)
    nijigaku    = %w(しず かす りな あゆ あい せつ かり かな えま)

    (otonokizaka + uranohoshi + nijigaku).sample(2).join
  end

  def ship_params
    params.require(:ship).permit(:ship_name, :comment)
  end
end
