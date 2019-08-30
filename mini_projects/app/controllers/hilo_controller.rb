class HiloController < ApplicationController
    def hilo
        cookies[:secretnum] = (rand(25)).to_i unless !cookies[:secretnum].nil?
        cookies[:counter] = 5 if cookies[:counter].nil?
        @counter = cookies[:counter].to_i
        @secretnum = cookies[:secretnum].to_i
        @guess = params[:guess].to_i
            if !params[:guess].blank?
                if @guess < @secretnum
                    flash.now[:alert] = "Go Higher"
                elsif @guess > @secretnum
                    flash.now[:alert] = "Go Lower"
                elsif @guess == @secretnum
                    flash.now[:alert] = "You Nailed It!"
                end
                cookies[:counter] = @counter -1
                if cookies[:counter] == 0
                    flash.now[:alert] = "You Lose!"
                end
            end

        end

    def delete_cookies
        cookies.delete :secretnum
        cookies.delete :guess
        cookies.delete :counter
        redirect_to '/hilo'
    end
end
