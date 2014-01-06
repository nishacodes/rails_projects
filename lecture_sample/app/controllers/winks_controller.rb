class WinksController < ApplicationController

  def index
    @winks = Wink.all
  end

  def new
    @wink = Wink.new
  end

  def create
    @wink = Wink.new(params[:wink])
    @wink.save
  end

  def edit
    @wink = Wink.find(params[:id])
  end

  def show
    @wink = Wink.find(params[:id])
  end

  def update
    @wink = Wink.find(params[:id])
    @wink.update_attributes(params[:wink])
  end

  def destroy
    @wink = Wink.find(params[:id])
    @wink.destroy
  end

end