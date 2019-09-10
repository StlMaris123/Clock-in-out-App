class ClockInsController < ApplicationController
  before_action :set_clock_in, only: [:show, :edit, :update, :destroy]

  # GET /clock_ins
  # GET /clock_ins.json
  def index
    @clock_ins = ClockIn.reverse_chronological
  end

  # GET /clock_ins/1
  # GET /clock_ins/1.json
  def show
  end

  # GET /clock_ins/new
  def new
    @clock_in = ClockIn.new
  end

  # GET /clock_ins/1/edit
  def edit
  end

  # POST /clock_ins
  # POST /clock_ins.json
  def create
    @clock_in = current_teacher.clock_ins.new(clock_type: 0)

    respond_to do |format|
      if @clock_in.save
        format.html { redirect_to @clock_in, notice: 'You have successfully clocked in.' }
        format.json { render :show, status: :created, location: @clock_in }
      else
        format.html { render :new }
        format.json { render json: @clock_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clock_ins/1
  # PATCH/PUT /clock_ins/1.json
  def update
    respond_to do |format|
      if @clock_in.update(clock_in_params)
        format.html { redirect_to @clock_in, notice: 'Clock in was successfully updated.' }
        format.json { render :show, status: :ok, location: @clock_in }
      else
        format.html { render :edit }
        format.json { render json: @clock_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clock_ins/1
  # DELETE /clock_ins/1.json
  def destroy
    @clock_in.destroy
    respond_to do |format|
      format.html { redirect_to clock_ins_url, notice: 'Clock in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clock_in
      @clock_in = ClockIn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clock_in_params
      params.require(:clock_in).permit(:teacher_id, :clock_type)
    end
end
