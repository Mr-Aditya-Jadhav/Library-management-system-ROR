class RequestbooksController < ApplicationController
  before_action :set_requestbook, only: %i[ show edit update destroy ]

  # GET /requestbooks or /requestbooks.json
  def index
    @requestbooks = Requestbook.all
  end

  # GET /requestbooks/1 or /requestbooks/1.json
  def show
  end

  # GET /requestbooks/new
  def new
    @isbn = params[:isbn]
    @title = params[:title]
    @author = params[:author]
    @requestby= Current.user.name
    @email= Current.user.email
    @requestbook = Requestbook.new
    @editflag = 0
  end

  # GET /requestbooks/1/edit
  
  def edit
    @editflag = 1
  end

  # POST /requestbooks or /requestbooks.json
  def create
    @requestbook = Requestbook.new(requestbook_params)

    respond_to do |format|
      if @requestbook.save
        format.html { redirect_to requestbook_url(@requestbook), notice: "Book Request was successfully created." }
        format.json { render :show, status: :created, location: @requestbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @requestbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requestbooks/1 or /requestbooks/1.json
  def update
    respond_to do |format|
      if @requestbook.update(requestbook_params)
        format.html { redirect_to requestbook_url(@requestbook), notice: "Book Request was successfully updated." }
        format.json { render :show, status: :ok, location: @requestbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @requestbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requestbooks/1 or /requestbooks/1.json
  def destroy
    @requestbook.destroy

    respond_to do |format|
      format.html { redirect_to requestbooks_url, notice: "Book Request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requestbook
      @requestbook = Requestbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requestbook_params
      params.require(:requestbook).permit(:isbn, :title, :author, :requestedby, :email, :status, :approvedate, :returndate, :fine)
    end
end
