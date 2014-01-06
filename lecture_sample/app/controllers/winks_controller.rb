class WinksController < ApplicationController

  def index
    @winks = Wink.all
  end

  def new
    @wink = Wink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wink }
    end
  end

  def create
    @wink = Wink.new(params[:wink])
    # @wink.save

    respond_to do |format|
      if @wink.save
        format.html { redirect_to @wink, notice: 'Wink was successfully created.' }
        format.json { render json: @wink, status: :created, location: @wink }
      else
        format.html { render action: "new" }
        format.json { render json: @wink.errors, status: :unprocessable_entity }
      end
    end
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

    respond_to do |format|
      format.html { redirect_to winks_url }
      format.json { head :no_content }
    end
  end

end