class MonkeysController < ApplicationController
    before_action :set_monkey, only: [:show, :edit, :update, :destroy]
  
    # GET /monkeys
    # GET /monkeys.json
    def index
      monkeys = Monkey.all
      render json: monkeys
  
    end
  
    # GET /monkeys/1
    # GET /monkeys/1.json
    def show
      the_monkey = Monkey.find_by(id: params[:id])
      render json: the_monkey
    end
    #not sure whether to have this, might handle it on the front end
  
    # GET /monkeys/new
    # def new
    #   @monkey = Monkey.new
    # end
  
    # GET /monkeys/1/edit
    # def edit
    # end
  
    # POST /monkeys
    # POST /monkeys.json
    def create
  
      monkey = Monkey.new(
        name: params[:name],
        size: params[:size] ,
        socialOrder: params[:socialOrder] ,
        image: params[:image] ,
        monkeyType: params[:monkeyType] ,
        species: params[:species] ,
        
        )
  
        if monkey.save
          # format.html { redirect_to @monkey, notice: 'Api monkey was successfully created.' }
          format.json { render json: monkey, status: :created }
        else
          # format.html { render :new }
          format.json { render json: monkey, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /monkeys/1
    # PATCH/PUT /monkeys/1.json
    def update
      respond_to do |format|
        if @monkey.update(monkey_params)
          # format.html { redirect_to @monkey, notice: 'Api monkey was successfully updated.' }
          format.json { render :show, status: :ok, location: @monkey }
        else
          # format.html { render :edit }
          format.json { render json: @monkey.errors, status: :unprocessable_entity }
        end
  
    end
  
    # DELETE /monkeys/1
    # DELETE /monkeys/1.json
    def destroy
      @monkey.destroy
      respond_to do |format|
        format.html { redirect_to monkeys_url, notice: 'Api monkey was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_monkey
        @monkey = Monkey.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def monkey_params
        params.permit(:name, :type, :size, :socialOrder, :image, :species)
      end
  end