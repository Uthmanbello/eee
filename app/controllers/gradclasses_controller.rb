class GradclassesController < ApplicationController
  before_action :set_gradclass, only: %i[show edit update destroy]

  # GET /gradclasses or /gradclasses.json
  def index
    @gradclasses = Gradclass.all
  end

  # GET /gradclasses/1 or /gradclasses/1.json
  def show
    @gradcourses = Gradcourse.where(gradclass_id: params[:id])
  end

  # GET /gradclasses/new
  def new
    @gradclass = Gradclass.new
  end

  # GET /gradclasses/1/edit
  def edit; end

  # POST /gradclasses or /gradclasses.json
  def create
    @gradclass = Gradclass.new(gradclass_params)

    respond_to do |format|
      if @gradclass.save
        format.html { redirect_to gradclass_url(@gradclass), notice: 'Gradclass was successfully created.' }
        format.json { render :show, status: :created, location: @gradclass }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gradclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gradclasses/1 or /gradclasses/1.json
  def update
    respond_to do |format|
      if @gradclass.update(gradclass_params)
        format.html { redirect_to gradclass_url(@gradclass), notice: 'Gradclass was successfully updated.' }
        format.json { render :show, status: :ok, location: @gradclass }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gradclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gradclasses/1 or /gradclasses/1.json
  def destroy
    @gradclass.destroy

    respond_to do |format|
      format.html { redirect_to gradclasses_url, notice: 'Gradclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gradclass
    @gradclass = Gradclass.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def gradclass_params
    params.require(:gradclass).permit(:name, :rc, :semester_id)
  end
end
