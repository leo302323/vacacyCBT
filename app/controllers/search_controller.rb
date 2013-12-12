class SearchController < ApplicationController
  def new
  end

  def doSearch
    username=params[:username]
    searchday=params[:searchday]
    @users=User.find_by_name(username)
  
    if username=""
      @users=[]
    @vacations=Vacation.where("starting_at<= ? and ending_at >= ? ",searchday.to_date,searchday.to_date)
   
    @vacations.each do |vacation|
      @users<<vacation.user
    end
    end 
  end

  def result
    id=params[:user]
    @user=User.find(id)
    @vacations=@user.vacations
  end
end
