class PartiesController < ApplicationController

def index 
    @parties = Party.all
end 

def show
    get_party
end 

def new
    @party = Party.new
end 

def create
    @party = Party.new(party_params)
    @party.save
    redirect_to party_path(@party)
end 

def edit 
    get_party
end 


def update
    get_party
    @party.update(party_params)
    redirect_to party_path(@party)
end 



private

def party_params
    params.require(:party).permit(:name, :date, :budget, :private)
end 

def get_party
    @party = Party.find(params[:id])
end 

end