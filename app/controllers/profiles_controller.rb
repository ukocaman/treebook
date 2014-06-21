class ProfilesController < ApplicationController
	def show
		@user = User.find_by_profile_name(params[:id]) #:id is in profiles/id
		#@user = User.find(8)
		if @user
			@statuses = @user.statuses.all
			render action: :show
		else
			render file: 'public/404.html', status: 404, formats: [:html] #if id is not found, send it to 404
		end
	end
end
