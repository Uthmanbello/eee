class SemestersController < ApplicationController
  before_action :set_semester, only: %i[ show edit update destroy ]

  # GET /semesters or /semesters.json
  def index
    @semesters = Semester.all
  end

  # GET /semesters/1 or /semesters/1.json
  def show
  end

  # GET /semesters/new
  def new
    @semester = Semester.new
  end

  # GET /semesters/1/edit
  def edit
  end

  # POST /semesters or /semesters.json
  def create
    @semester = Semester.new(semester_params)

    respond_to do |format|
      if @semester.save
        format.html { redirect_to semester_url(@semester), notice: "Semester was successfully created." }
        format.json { render :show, status: :created, location: @semester }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @semester.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /semesters/1 or /semesters/1.json
  def update
    respond_to do |format|
      if @semester.update(semester_params)
        format.html { redirect_to semester_url(@semester), notice: "Semester was successfully updated." }
        format.json { render :show, status: :ok, location: @semester }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @semester.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /semesters/1 or /semesters/1.json
  def destroy
    @semester.destroy

    respond_to do |format|
      format.html { redirect_to semesters_url, notice: "Semester was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semester
      @semester = Semester.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def semester_params
      params.require(:semester).permit(:name, :session, :year)
    end
end
