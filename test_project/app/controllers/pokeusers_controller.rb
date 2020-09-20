class PokeusersController < ApplicationController
    before_action :set_pokeuser, only: [:show, :edit, :update, :destroy]
  
    def index
      @pokeusers = Pokeuser.all
    end
  
    def show
    end
  
    def new
      @pokeuser = Pokeuser.new
    end

    def edit
    end

    def create
      @pokeuser = Pokeuser.new(pokeuser_params)
  
      respond_to do |format|
        if @pokeuser.save
          format.html { redirect_to @pokeuser, notice: 'Pokeuser was successfully created.' }
          format.json { render :show, status: :created, location: @pokeuser }
        else
          format.html { render :new }
          format.json { render json: @pokeuser.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def update
      respond_to do |format|
        if @pokeuser.update(pokeuser_params)
          format.html { redirect_to @pokeuser, notice: 'Pokeuser was successfully updated.' }
          format.json { render :show, status: :ok, location: @pokeuser }
        else
          format.html { render :edit }
          format.json { render json: @pokeuser.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @pokeuser.destroy
      respond_to do |format|
        format.html { redirect_to pokeuser_url, notice: 'Pokeuser was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      def set_pokeuser
        @pokeuser = Pokeuser.find(params[:id])
      end
  
      def pokeuser_params
        params.require(:pokeuser).permit(:name, :email, :password)
      end
end
  