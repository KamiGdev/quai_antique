class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[ show edit update destroy ]
  before_action :set_available_slots, only: %i[ new create edit update select_slot ]

  # GET /reservations or /reservations.json
  def index
    @reservations = Reservation.where email: current_user.email
  end

  # GET /reservations/1 or /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @date = Date.today
    init_new
  end

  # GET /reservations/1/edit
  def edit
    @date = @reservation.slot.date
    @selected_slot = @reservation.slot.time.strftime("%H:%M")
  end

  def refresh_date
    @date = Date.parse(params[:date])
    set_available_slots
  end

  # POST /reservations or /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)
    slot = Slot.new date: Date.parse(params[:date]), time: params[:slot]
    @reservation.slot = slot

    respond_to do |format|
      if @reservation.save
        slot.reservation_id = @reservation.id
        slot.save!
        format.html { redirect_to reservation_url(@reservation), notice: "Réservation effectuée avec succès." }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservations/1 or /reservations/1.json
  def update
    respond_to do |format|
      slot = Slot.find @reservation.slot.id
      slot.destroy!
      slot = Slot.new date: Date.parse(params[:date]), time: params[:slot]
      if @reservation.update(reservation_params)
        slot.reservation_id = @reservation.id
        slot.save!
        format.html { redirect_to reservation_url(@reservation), notice: "Réservation effectuée avec succès." }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1 or /reservations/1.json
  def destroy
    @reservation.destroy

    respond_to do |format|
      format.html { redirect_to reservations_url, notice: "La réservation a été supprimée." }
      format.json { head :no_content }
    end
  end


  def select_slot
    @selected_slot = params[:slot]
  end

  private

  def init_new
    @reservation = Reservation.new
    if user_signed_in?
      @reservation.email = current_user.email
      @reservation.lastname = current_user.lastname
      @reservation.people_number = current_user.people_number
      @reservation.allergy = current_user.allergy
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:lastname, :email, :phone_number, :date, :people_number, :allergy)
  end

  def set_available_slots
    @date = @date || Date.today
    @slots = Slot.where date: @date


    taken_slots = @slots.pluck(:time).map { |time| time.strftime("%H:%M") } # stringify
       # ["10:30", "10:15"]


    @lunch_slots = []
    @dinner_slots = []

       # Define a capacity max of 30 pers. per session, lunch or dinner.
    people_number =  params[:people_number].to_i || 0


    sum = 0
    @slots.each do |s|
      if s.time.hour<15
      sum = sum + s.reservation.people_number
      end
    end

    if sum + people_number > 30
      return
    end


    (11..14).step(0.25).each do |hour|
      # lunch hours
      hour_s = format '%2d', hour # piocher le 10 du 10.25
      minute_s = (hour.modulo(1) * 60).to_i.to_s.ljust(2, '0') # transformer le 0.25 en 15min (le quart)
      slot = "#{hour_s}:#{minute_s}" # 10:15
      @lunch_slots << slot unless taken_slots.include? slot

    end



    sum = 0
    @slots.each do |s|
      if s.time.hour>17
        sum = sum + s.reservation.people_number
      end
    end

      if sum + people_number > 30
        return
      end



    (19..22).step(0.25).each do |hour|
      # dinner hours
      hour_s = format '%2d', hour # piocher le 10 du 10.25
      minute_s = (hour.modulo(1) * 60).to_i.to_s.ljust(2, '0') # transformer le 0.25 en 15min (le quart)
      slot = "#{hour_s}:#{minute_s}" # 10:15
      @dinner_slots << slot unless taken_slots.include? slot

    end

    end



end




