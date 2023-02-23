class NewFeatureJitsController < ApplicationController
  before_action :set_new_feature_jit, only: %i[ show edit update destroy ]

  # GET /new_feature_jits or /new_feature_jits.json
  def index
    @new_feature_jits = NewFeatureJit.all
  end

  # GET /new_feature_jits/1 or /new_feature_jits/1.json
  def show
  end

  # GET /new_feature_jits/new
  def new
    @new_feature_jit = NewFeatureJit.new
  end

  # GET /new_feature_jits/1/edit
  def edit
  end

  # POST /new_feature_jits or /new_feature_jits.json
  def create
    @new_feature_jit = NewFeatureJit.new(new_feature_jit_params)

    respond_to do |format|
      if @new_feature_jit.save
        format.html { redirect_to new_feature_jit_url(@new_feature_jit), notice: "New feature jit was successfully created." }
        format.json { render :show, status: :created, location: @new_feature_jit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @new_feature_jit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_feature_jits/1 or /new_feature_jits/1.json
  def update
    respond_to do |format|
      if @new_feature_jit.update(new_feature_jit_params)
        format.html { redirect_to new_feature_jit_url(@new_feature_jit), notice: "New feature jit was successfully updated." }
        format.json { render :show, status: :ok, location: @new_feature_jit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @new_feature_jit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_feature_jits/1 or /new_feature_jits/1.json
  def destroy
    @new_feature_jit.destroy

    respond_to do |format|
      format.html { redirect_to new_feature_jits_url, notice: "New feature jit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_feature_jit
      @new_feature_jit = NewFeatureJit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def new_feature_jit_params
      params.require(:new_feature_jit).permit(:content, :user_id)
    end
end
