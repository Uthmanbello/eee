class GradcoursesController < ApplicationController
  before_action :set_gradcourse, only: %i[ show edit update destroy ]

  # GET /gradcourses or /gradcourses.json
  def index
    @gradcourses = Gradcourse.all
  end

  # GET /gradcourses/1 or /gradcourses/1.json
  def show
    @gradcourse = Gradcourse.find(params[:id])
    @gradstudents = Gradstudent.where(level: @gradcourse.gradclass.name)
  end

  # GET /gradcourses/new
  def new
    @gradcourse = Gradcourse.new
  end

  # GET /gradcourses/1/edit
  def edit
  end

  # POST /gradcourses or /gradcourses.json
  def create
    @gradcourse = Gradcourse.new(gradcourse_params)

    respond_to do |format|
      if @gradcourse.save
        format.html { redirect_to gradcourse_url(@gradcourse), notice: "Gradcourse was successfully created." }
        format.json { render :show, status: :created, location: @gradcourse }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gradcourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gradcourses/1 or /gradcourses/1.json
  def update
    respond_to do |format|
      if @gradcourse.update(gradcourse_params)
        format.html { redirect_to gradcourse_url(@gradcourse), notice: "Gradcourse was successfully updated." }
        format.json { render :show, status: :ok, location: @gradcourse }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gradcourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gradcourses/1 or /gradcourses/1.json
  def destroy
    @gradcourse.destroy

    respond_to do |format|
      format.html { redirect_to gradcourses_url, notice: "Gradcourse was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gradcourse
      @gradcourse = Gradcourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gradcourse_params
      params.require(:gradcourse).permit(:code, :title, :units, :semester_id, :gradclass_id)
    end
end
