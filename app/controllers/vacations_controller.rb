class VacationsController < ApplicationController
  # GET /vacations
  # GET /vacations.json
  before_filter :authenticate_user!
  def index
    @vacations =current_user.vacations

    @vacations.each do |vacat|
      vacat.define_status
     # @user=vacat.user
     # puts @user

    end
    @user=current_user
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vacations }
    end
  end

  # GET /vacations/1
  # GET /vacations/1.json
  def show
    @vacation = Vacation.find(params[:id])
    @vacation.define_status

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vacation }
    end
  end

  # GET /vacations/new
  # GET /vacations/new.json
  def new
    @vacation = Vacation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vacation }
    end
  end

  # GET /vacations/1/edit
  def edit
    @vacation = Vacation.find(params[:id])
  end

  # POST /vacations
  # POST /vacations.json
  def create
    @vacation = Vacation.new(params[:vacation])
    @vacation.define_status
    @vacation.user=current_user
    respond_to do |format|
      if @vacation.save
        current_user.updatetotaldays
        Notifier.create_vacation(@vacation).deliver
        format.html { redirect_to @vacation, notice: 'Vacation was successfully created.' }
        format.json { render json: @vacation, status: :created, location: @vacation }
      else
        format.html { render action: "new" }
        format.json { render json: @vacation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vacations/1
  # PUT /vacations/1.json
  def update
    @vacation = Vacation.find(params[:id])

    respond_to do |format|
      if @vacation.update_attributes(params[:vacation])
        current_user.updatetotaldays
        format.html { redirect_to @vacation, notice: 'Vacation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vacation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacations/1
  # DELETE /vacations/1.json
  def destroy
    @vacation = Vacation.find(params[:id])
    @vacation.destroy
    current_user.updatetotaldays
    respond_to do |format|
      format.html { redirect_to vacations_url }
      format.json { head :no_content }
    end
  end
end
