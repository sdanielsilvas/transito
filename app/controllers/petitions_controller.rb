class PetitionsController < ApplicationController
	skip_before_filter :verify_authenticity_token  
	def index
		@avalible_agents = Agent.where(avalible:true)
		@bussy_agents = Agent.where(avalible:false)
		@pending_petitions = Petition.where(status:"pending")
		@taked_petitions = Petition.where(status:"taked")
		@attended_petittions = Petition.where(status:"attended")

		respond_to do |format|
			format.html  # index.html.erb
			format.json  { render :json => @posts }
		end
	end

	def assign_agent
		Petition.find(params[:id]).update(agent_id: params[:agent],status:"taked")
		Agent.find(params[:agent]).update(avalible:false)
		redirect_to :root
	end

	def end_request
		request = Petition.find(params[:id])
		request.update(status:"attended")
		Agent.find(request.agent_id).update(avalible:true)

		redirect_to :root
	end

	def create
		Petition.create(longitude:params[:longitude],latitude:params[:latitude],status:"pending")
		  render :json => { 
		  	:status => :ok, 
		  	:message => "Success!",
		  	:html => "<b>congrats</b>"
		  	}.to_json
		#---------------------------------------------------------------------------
		#aqui va lo de dayron
		#---------------------------------------------------------------------------
	end
end
