class SuggestionsController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[index show]
    
    def index
        @suggestions = Suggestion.all
    end
    
    def show
        @suggestion = Suggestion.find(params[:id])
        @markers = [{
            lat: @suggestion.latitude,
            lng: @suggestion.longitude
        }]
    end
    
    def favorite
        @suggestion = Suggestion.find(params[:id])
        @favorite = Favorite.create
        @favorite.user = current_user
        @favorite.suggestion = @suggestion
        redirect_to suggestion_path(@suggestion)
    end
end
