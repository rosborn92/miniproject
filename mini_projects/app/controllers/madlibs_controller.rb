class MadlibsController < ApplicationController
    def madlibs
        p params
        @verbing1 = params[:verbing1]
        @adjective1 = params[:adjective1]
        @verbing2 = params[:verbing2]
        @bodypart1 = params[:bodypart1]
        @adverb = params[:adverb]
        @bodypart2 = params[:bodypart2]
        @nouns = params[:nouns]
        @verb1 = params[:verb1]
        @animals = params[:animals]
        @noun = params[:noun]
        @verb2 = params[:verb2]
        @adjective2 = params[:adjective2]
        @color = params[:color]
        if !@verbing1.nil?
            flash.now[:alert] = "#{@verbing1} is a/an #{@adjective1} form of exercise. #{@verbing2} a bicycle enables you to develop your #{@bodypart1} muscles as well as #{@adverb} increase the rate of your #{@bodypart2} beat. More #{@nouns} around the world #{@verb1} bicycles than drive #{@animals}. No matter what kind of #{@noun} you #{@verb2}, always be sure to wear a/an #{@adjective2} helmet. Make sure to have #{@color} reflectors, too."
        end

    end
end
