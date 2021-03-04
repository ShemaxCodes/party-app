class PartiesController < ApplicationController

def index 
    @parties = Party.all
end 

def show
    @party = Party.find(params[:id])
end 

def new
    @party = Party.new
end 

def create
    @party = Party.new(party_params)
    byebug
    @party.save
    redirect_to party_path(@party)
end 

def edit 
    @party = Party.find(params[:id])
end 


def update
    @party = Party.find(params[:id])
    byebug
    @party.update(party_params)
    redirect_to party_path(@party)
end 



private

def party_params
    params.require(:party).permit(:name, :date, :budget, :private)
end 

end