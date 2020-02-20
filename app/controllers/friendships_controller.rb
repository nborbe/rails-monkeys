class FriendshipsController < ApplicationController



    def index
        friendships = Friendship.all
        render json: friendships
    
      end



    def create


        first_monkey = Monkey.find(params[:monkey])
        second_monkey = Monkey.find(params[:friend])
  
        friendship = Friendship.new(
          friend: second_monkey,
          monkey: first_monkey,
          )
    
          if friendship.save
            # format.html { redirect_to @friendship, notice: 'Api friendship was successfully created.' }
            format.json { render json: friendship, status: :created }
          else
            # format.html { render :new }
            format.json { render json: friendship, status: :unprocessable_entity }
          end
        end


        def destroy
            
            friendship = Friendship.find(params[:id])

            friendship.destroy
            respond_to do |format|
              format.json { render json: "Friendship Successfully Deleted" }
            end



        end










    end



