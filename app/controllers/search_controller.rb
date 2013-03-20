class SearchController < ApplicationController
  def new
  end

  def doSearch
    username=params[:username]
    searchday=params[:searchday]
    @users=User.find_by_name(username)
    logger.debug "222"
    logger.debug @users
    if username=""
      @users=[]
    @vacations=Vacation.where("starting_at<= ? and ending_at >= ? ",searchday.to_date,searchday.to_date)
    logger.debug "1111"
    logger.debug @vacations
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
