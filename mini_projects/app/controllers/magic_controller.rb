class MagicController < ApplicationController


    def magic
        p params
        arr = ["Don't bet on it", "Not on your worst day, pal", "Keep dreaming", "Why not?", "Go for it", "Yes....well...maybe."]
        @random_answer = arr[rand(0..5)]
        if !params[:hello].nil?
            flash.now[:alert] = "#{@random_answer}"
        end
    end
end
