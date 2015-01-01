class WoreItVotesController < ApplicationController
  before_action :set_wore_it_vote, only: [:show, :edit, :update, :destroy]

  # GET /wore_it_votes
  # GET /wore_it_votes.json
  def index
    @wore_it_votes = WoreItVote.all
  end

  # GET /wore_it_votes/1
  # GET /wore_it_votes/1.json
  def show
  end

  # GET /wore_it_votes/new
  def new
    @wore_it_vote = WoreItVote.new
  end

  # GET /wore_it_votes/1/edit
  def edit
  end

  # POST /wore_it_votes
  # POST /wore_it_votes.json
  def create
    @wore_it_vote = WoreItVote.new(wore_it_vote_params)

    respond_to do |format|
      if @wore_it_vote.save
        format.html { redirect_to @wore_it_vote, notice: 'Wore it vote was successfully created.' }
        format.json { render :show, status: :created, location: @wore_it_vote }
      else
        format.html { render :new }
        format.json { render json: @wore_it_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wore_it_votes/1
  # PATCH/PUT /wore_it_votes/1.json
  def update
    respond_to do |format|
      if @wore_it_vote.update(wore_it_vote_params)
        format.html { redirect_to @wore_it_vote, notice: 'Wore it vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @wore_it_vote }
      else
        format.html { render :edit }
        format.json { render json: @wore_it_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wore_it_votes/1
  # DELETE /wore_it_votes/1.json
  def destroy
    @wore_it_vote.destroy
    respond_to do |format|
      format.html { redirect_to wore_it_votes_url, notice: 'Wore it vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wore_it_vote
      @wore_it_vote = WoreItVote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wore_it_vote_params
      params.require(:wore_it_vote).permit(:vote, :user_id, :item_id)
    end
end
