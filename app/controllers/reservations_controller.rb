class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[ show edit update destroy ]
  before_action :set_available_slots, only: %i[ new create ]

  # GET /reservations or /reservations.json
  def index
    @reservations = Reservation.all
  end

  # GET /reservations/1 or /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new
    if user_signed_in?
      @reservation.email = current_user.email
      @reservation.lastname = current_user.lastname
      @reservation.people_number = current_user.people_number
      @reservation.allergy = current_user.allergy
    end
  end

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations or /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)
    slot = Slot.new date: @date, time: params[:slot]

    respond_to do |format|
      if @reservation.save
        slot.reservation_id = @reservation.id
        slot.save!
        format.html { redirect_to reservation_url(@reservation), notice: "Reservation was successfully created." }
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
      if @reservation.update(reservation_params)
        format.html { redirect_to reservation_url(@reservation), notice: "Reservation was successfully updated." }
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
      format.html { redirect_to reservations_url, notice: "Reservation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservation_params
      params.require(:reservation).permit(:lastname, :email, :phone_number, :date, :people_number, :allergy)
    end

    def set_available_slots
      @date = Date.today # TODO: selectionner une date
      @slots = Slot.all

      taken_slots = @slots.pluck(:time).map { |time| time.strftime("%H:%M") }
      @available_slots = []
      (10..15).step(0.25).each do |hour|
        hour_s =  format '%2d', hour.floor # piocher le 10 du 10.25
        minute_s = (hour.modulo(1) * 60).to_i.to_s.rjust(2, '0') # transformer le 0.25 en 15min (le quart) et garder que le 25
        slot = "#{hour_s}:#{minute_s}"
        @available_slots << slot unless taken_slots.include? slot
      end
    end
end
