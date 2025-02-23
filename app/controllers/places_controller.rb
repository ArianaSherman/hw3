class PlacesController < ApplicationController
  def index
    @places = Place.all
    # render places/index view
  end

  def show
    # find a place
    @place=Place.find_by({"id"=>params["id"]})
    # render places/show view with details about places
    @entries=Entry.where({"place_id"=>@place["id"]})
  end

    def new
      # render view with new Company form
    end

    def create
    #   # start with a new place
    @place=Place.new
    #   # assign user-entered form data to Place's columns
    @place["name"]=params["name"]
    #   # save Place row
    @place.save 
    #   # redirect user
    redirect_to "/places/"
    end
end