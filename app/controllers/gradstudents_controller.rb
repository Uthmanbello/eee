class GradstudentsController < ApplicationController
  before_action :set_gradstudent, only: %i[show edit update destroy]

  # GET /gradstudents or /gradstudents.json
  def index
    @gradstudents = Gradstudent.all
  end

  # GET /gradstudents/1 or /gradstudents/1.json
  def show; end

  # GET /gradstudents/new
  def new
    @gradstudent = Gradstudent.new
  end

  # GET /gradstudents/1/edit
  def edit; end

  # POST /gradstudents or /gradstudents.json
  def create
    @gradstudent = Gradstudent.new(gradstudent_params)

    respond_to do |format|
      if @gradstudent.save
        format.html { redirect_to gradstudent_url(@gradstudent), notice: 'Gradstudent was successfully created.' }
        format.json { render :show, status: :created, location: @gradstudent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gradstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gradstudents/1 or /gradstudents/1.json
  def update
    respond_to do |format|
      if @gradstudent.update(gradstudent_params)
        format.html { redirect_to gradstudent_url(@gradstudent), notice: 'Gradstudent was successfully updated.' }
        format.json { render :show, status: :ok, location: @gradstudent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gradstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gradstudents/1 or /gradstudents/1.json
  def destroy
    @gradstudent.destroy

    respond_to do |format|
      format.html { redirect_to gradstudents_url, notice: 'Gradstudent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gradstudent
    @gradstudent = Gradstudent.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def gradstudent_params
    params.require(:gradstudent).permit(:name, :service, :level, :num)
  end
end
