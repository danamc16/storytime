# require 'twilio-ruby'

def normal
	account_sid = "AC6bb55ecdf61f02c7692ab0e2b1883bca"
	auth_token = "02320eafb5cc10b0a95d187407a1ca11"
	client = Twilio::REST::Client.new account_sid, auth_token

	from ="+15132582662" #the twilio number

	# friends = [ "+15612125831", "+19788082293" ]

	User.all.each do |user|
		client.account.messages.create(

		:from => from,
		:to => user.phone_number,
		:body => user.story.content
		# Story.find(person.select(:story_id))
		# need to include activities in body
		# send multiple messages? one for story, one for activty
	)
	end

end
